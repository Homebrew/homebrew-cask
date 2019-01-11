cask 'routeconverter' do
  version '2.25.53'
  sha256 '3cc9f3add02ec61d122cdef57327668ec4cf2d90cbe4ab8d1fa7465c90758824'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/'
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
