cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.6"
  sha256 arm:   "cba24e5298046e5ca8e52ae5119cf0e98621f39da53d69a29160260cceec821a",
         intel: "5d6165e25147c149934219917e331263fca09c2fbd26fc623ac16ec7ee18d96c"

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
