cask 'routeconverter' do
  version '2.27.94'
  sha256 'ca6d7be4fbbefd406ef9f87b9f3713d4ab224da43acaa87d32c9ad3b45f1f9e5'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/',
          configuration: version.major_minor
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
