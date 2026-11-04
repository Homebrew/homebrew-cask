cask "notchnook-pro" do
  version "2.0.8,2074"
  sha256 "ca68bb80b3d193f1f83ef02e1fd5ab2c9c088bc96b422941fdb6d7e95c0c5d44"

  url "https://getnotchnook.com/pro-updates/v2/NotchNook-Pro-build#{version.csv.second}.dmg"
  name "NotchNook Pro"
  desc "Notch workspace for music, widgets and files"
  homepage "https://getnotchnook.com/"

  livecheck do
    url "https://getnotchnook.com/pro-updates/v2/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "NotchNook Pro.app"

  zap trash: [
    "~/Library/Application Support/com.getnotchnook.NotchNookPro",
    "~/Library/Caches/com.getnotchnook.NotchNookPro",
    "~/Library/HTTPStorages/com.getnotchnook.NotchNookPro",
    "~/Library/Preferences/com.getnotchnook.NotchNookPro.plist",
  ]
end
