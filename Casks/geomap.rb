cask "geomap" do
  version "3.6.12"
  sha256 :no_check

  url "http://www.geomapapp.org/MapApp/GeoMapApp.dmg"
  name "GeoMapApp"
  homepage "http://www.geomapapp.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/GeoMapApp\s*is.*?(\d+(?:\.\d+)*)</i)
  end

  app "GeoMapApp.app"

  zap trash: "~/.GMA"
end
