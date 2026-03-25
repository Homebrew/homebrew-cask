cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.7"
  sha256 arm:   "01ebfd0a2d6a712676ffe125094cfb232640165641c67c09b663af326628496e",
         intel: "61c0ad912f83a69ae46617d2a6093e183fa00aa80deeab512bbce264c9b9b4ba"

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
