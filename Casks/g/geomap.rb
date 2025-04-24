cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.5"
  sha256 arm:   "a4d372bfa25a0116b7c19ccac09e1e7d91d11a1eea529c2ec65ee0d4d4ee9b6b",
         intel: "d66dffb33193db23eb7926a09ca754966157bf7086ff3f1f625505b590e66be9"

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
