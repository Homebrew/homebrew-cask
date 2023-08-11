cask "geomap" do
  version "3.7.1"
  sha256 :no_check

  url "https://www.geomapapp.org/MapApp/GeoMapApp.dmg"
  name "GeoMapApp"
  desc "Browse, visualize and analyze geoscience data sets"
  homepage "https://www.geomapapp.org/"

  livecheck do
    url :homepage
    regex(/GeoMapApp\s*is.*?(\d+(?:\.\d+)+)\s*</i)
  end

  app "GeoMapApp.app"

  zap trash: "~/.GMA"
end
