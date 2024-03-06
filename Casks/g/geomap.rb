cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.2"
  sha256 arm:   "8863385520eb4bff2b0b2a9a3fd639ab88d68616b8792db863f6a927933cacd2",
         intel: "fe33677cb601bb5a29c6dee1669b6596754a2fd11b37c6b99c281cfa633cb7cf"

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
