class ForecastController < ApplicationController
  def fetch
    @forecast = ForecastIO.forecast(params[:lat], params[:long])

    render json: @forecast.to_json
  end
end
