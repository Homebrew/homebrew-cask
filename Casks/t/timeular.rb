cask "timeular" do
  version "6.5.0"
  sha256 "672947a0559a13f4c4f0430217188a8b8de0d8c1318e5bcc5582e8cacdbf43f6"

  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg",
      verified: "timeular-desktop-packages.s3.amazonaws.com/"
  name "Timeular"
  desc "Time tracking aided by a physical device"
  homepage "https://timeular.com/"

  livecheck do
    url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Timeular.app"

  zap trash: [
    "~/Library/Application Support/Timeular",
    "~/Library/Logs/Timeular",
    "~/Library/Preferences/com.timeular.zei.plist",
  ]
end
