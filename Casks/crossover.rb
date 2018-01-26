cask 'crossover' do
  version '17.0.0'
  sha256 'd8127a57ee04547fb9b87497d0abdde3bd6dd032d336c7ad0aeb3b234107bd79'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml',
          checkpoint: 'df59505326aa1d30307891eaaa673a5a5e944eb6dfb37eaafb72ed879fb04209'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'
end
