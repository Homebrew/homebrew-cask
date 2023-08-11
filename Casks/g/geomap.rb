cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.1"
  sha256 arm:   "9b76e98cd954779658b5d41b9486e30315a6106ee9d44e429d38d1dd1c35b3e8",
         intel: "07c69b0282bc6828e769a73e00fd6b87a4ec82669e80727fc5a35fd2b61b462f"

  url "https://www.geomapapp.org/MapApp/GeoMapApp-#{version}-#{arch}.dmg"
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

# https://www.geomapapp.org/MapApp/GeoMapApp-3.7.1-Intel.dmg
# https://www.geomapapp.org/MapApp/GeoMapApp-3.7.1-Silicon.dmg
