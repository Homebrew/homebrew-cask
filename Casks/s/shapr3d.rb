cask "shapr3d" do
  version "5.551.0.6451"
  sha256 "da43fab4593f463c0f47f64f2ee86c6050b1a312d05b7b747683165cf61ff626"

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
