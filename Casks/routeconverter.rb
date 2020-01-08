cask 'routeconverter' do
  version '2.27.94'
  sha256 'afdda5a0fdcd1a5dd27f2740b069a071199abf78f59dbc2d79846a8890f7314b'

  url 'https://static.routeconverter.com/download/RouteConverterMac.app.zip'
  appcast 'https://static.routeconverter.com/download/previous-releases/',
          configuration: version.major_minor
  name 'RouteConverter'
  homepage 'https://www.routeconverter.com/'

  auto_updates true

  app 'RouteConverterMacOpenSource.app'
end
