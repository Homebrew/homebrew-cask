cask 'forecast' do
  version '0.9_121'
  sha256 'fcec57220598991a4e3894ae7d7a3323811d87096f94e9bf1a81b75bbdc2ea08'

  # d2uzvmey2c90kn.cloudfront.net/appcast_download was verified as official when first introduced to the cask
  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version}.zip"
  appcast 'https://overcast.fm/appcast/Forecast.xml',
          checkpoint: '4560de67ed227ddf2035bc6b13209fcc26c0fb490bf483ea79fd476649af50a2'
  name 'Forecast'
  homepage 'https://overcast.fm/forecast'

  app 'Forecast.app'
end
