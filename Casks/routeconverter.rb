cask 'routeconverter' do
  version '2.25.55'
  sha256 '4c970b3a05b2cee472dd19958935639ec1cde5b5c8f536781db7f07132f6b9b1'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/'
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
