cask "routeconverter" do
  version "2.30.324"
  sha256 :no_check

  url "https://static.routeconverter.com/download/RouteConverterMac.app.zip"
  appcast "https://static.routeconverter.com/download/previous-releases/",
          must_contain: version.major_minor
  name "RouteConverter"
  homepage "https://www.routeconverter.com/"

  auto_updates true

  app "RouteConverterMacOpenSource.app"
end
