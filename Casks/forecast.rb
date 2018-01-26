cask 'forecast' do
  version '0.9_124'
  sha256 '809af9ba53df7cbc77cb00cce4d99e82b02311f00574dc529762542fd2ca5432'

  # d2uzvmey2c90kn.cloudfront.net/appcast_download was verified as official when first introduced to the cask
  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version}.zip"
  appcast 'https://overcast.fm/appcast/Forecast.xml',
          checkpoint: '511888d9ac28bf8361f269ceaf310c1a28d672af4866f7d604786b905504f642'
  name 'Forecast'
  homepage 'https://overcast.fm/forecast'

  app 'Forecast.app'
end
