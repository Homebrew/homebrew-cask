cask 'routeconverter' do
  version :latest
  sha256 :no_check

  url 'http://static.routeconverter.com/download/RouteConverterMac.app.zip'
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMac.app'
end
