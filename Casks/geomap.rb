cask "geomap" do
  version "3.6.10,1"
  sha256 :no_check

  url "http://www.geomapapp.org/MapApp/GeoMapApp.dmg"
  name "GeoMapApp"
  homepage "http://www.geomapapp.org/"

  app "GeoMapApp.app"

  zap trash: "~/.GMA"
end
