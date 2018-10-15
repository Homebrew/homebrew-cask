cask 'routeconverter' do
  version '2.24.42'
  sha256 '145c312f077c904fc717c6650bacff0b5a00a2f7f77ccc03f78259adc46d763f'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/'
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMac.app'
end
