cask 'routeconverter' do
  version '2.29.116'
  sha256 '2f0df34831e8ee1a864070c5d11fe4b596ea32ed5a8acf1728220fc64547db51'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/',
          must_contain: version.major_minor
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
