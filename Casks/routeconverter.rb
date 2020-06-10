cask 'routeconverter' do
  version '2.27.95'
  sha256 '9883f301668d02cc03f63859399936bcd8156255f183c18ba260c74308948c44'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/',
          configuration: version.major_minor
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
