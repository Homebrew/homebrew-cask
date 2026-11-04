cask "notchnook-pro" do
  version "2.0.7,2073"
  sha256 "c7c8cd4badc8a6daec2397a378045633bdf0062b04d0e2bbbac1fa1a4544dba9"

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
