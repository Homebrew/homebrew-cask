cask "timemator" do
  version "3.2.1"
  sha256 "92623740733fcd7374fbc2b107479316800f3cb794de5f1ec4dcd73c6424c669"

  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator_#{version}.dmg",
      verified: "catforce-timemator.s3.amazonaws.com/"
  name "Timemator"
  desc "Automatic time-tracking application"
  homepage "https://timemator.com/"

  livecheck do
    url "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Timemator.app"

  zap trash: [
    "~/Library/Application Scripts/com.catforce.timemator.macos.TimematorWidgets",
    "~/Library/Application Scripts/group.catforce.timemator",
    "~/Library/Application Support/com.catforce.timemator.macos",
    "~/Library/Application Support/Timemator",
    "~/Library/Caches/com.catforce.timemator.macos",
    "~/Library/Containers/com.catforce.timemator.macos.TimematorWidgets",
    "~/Library/Group Containers/group.catforce.timemator",
    "~/Library/Preferences/com.catforce.timemator.macos.plist",
  ]
end
