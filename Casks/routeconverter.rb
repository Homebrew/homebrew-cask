cask 'routeconverter' do
  version '2.23'
  sha256 'd1eef2e465017b9e69f1d8283b2394899eaf4cfa2b604114095c1b7f25917eca'

  url "http://static.routeconverter.com/download/previous-releases/#{version}/RouteConverterMac.app.zip"
  appcast 'http://static.routeconverter.com/download/previous-releases/'
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMac.app'
end
