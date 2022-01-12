cask "camo-studio" do
  version "1.5.1,5687"
  sha256 "11bf7f5da0f158b41df2e883c0a04a91733b7cd2f675f0632c332883f02f8032"

  url "https://reincubate.com/res/labs/camo/CamoStudioMac-#{version.csv.first}-#{version.csv.second}-Release.app.zip"
  name "Camo Studio"
  desc "Use your phone as a high-quality webcam with image tuning controls"
  homepage "https://reincubate.com/camo/"

  livecheck do
    url "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
    strategy :sparkle
  end

  auto_updates true

  app "Camo Studio.app"

  zap trash: [
    "~/Library/Caches/com.reincubate.macos.cam",
    "~/Library/Preferences/com.reincubate.macos.cam.plist",
  ]
end
