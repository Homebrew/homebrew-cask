cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.4"
  sha256 arm:   "bd7f714e59eeb492230635bb5a817909edc953f2afc46c12d5d776bab8ccaac1",
         intel: "ebf59d4abc8dbd593c316a00199b9c8a63a0cfe301e985c0abe614631f786bd4"

  url "https://app.geomapapp.org/MapApp/GeoMapApp-#{version}-#{arch}.dmg"
  name "GeoMapApp"
  desc "Browse, visualise and analyze geoscience data sets"
  homepage "https://www.geomapapp.org/"

  livecheck do
    url "https://www.geomapapp.org/MacInstall.html"
    regex(/href=.*?GeoMapApp[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "GeoMapApp.app"

  zap trash: "~/.GMA"
end
