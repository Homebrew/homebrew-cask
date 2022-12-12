cask "shapr3d" do
  version "5.280.0.4509"
  sha256 "a9c561b8f65a747098bb861e01d64fb0f4e2071fbb93ba497596adbdfff59bc3"

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
