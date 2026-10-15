cask "timemator" do
  version "3.3.2"
  sha256 "00eee152e179afca717c83b2bedcc1be0e41f2afb746e8cb4f179b4c075495de"

  url "https://timemator.s3.amazonaws.com/releases/Timemator_#{version}.dmg"
  name "Timemator"
  desc "Automatic time-tracking application"
  homepage "https://timemator.com/"

  livecheck do
    url "https://timemator.com/assets/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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
