cask 'routeconverter' do
  version '2.26.69'
  sha256 'ade167e527527a84e3a51df37b99622f1e3a0a4934656ee4ba088df4e780dda9'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/'
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
