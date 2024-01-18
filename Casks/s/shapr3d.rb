cask "shapr3d" do
  version "5.531.0.6320"
  sha256 "4c1e4741e03711bc63b1cc3b76ba13fcc11b2c23ea21a3df13babae151bd3d34"

  url "https://download.shapr3d.com/mac/Shapr3D-#{version}.dmg"
  name "Shapr3D"
  desc "3D CAD software"
  homepage "https://www.shapr3d.com/"

  livecheck do
    url "https://download.shapr3d.com/mac/latest"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Shapr3D.app"

  zap trash: [
    "~/Library/Application Scripts/com.shapr3d.shapr",
    "~/Library/Containers/com.shapr3d.shapr",
  ]
end
