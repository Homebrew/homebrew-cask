cask "bramble" do
  version "0.23.0"
  sha256 "31bde39b561e460b7c2e02dc711245a1430381505bab68bf669de451496497e7"

  url "https://github.com/flythenimbus/bramble/releases/download/#{version}-desktop/Bramble_#{version}_universal.dmg"
  name "Bramble"
  desc "Password manager"
  homepage "https://bramble.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)-desktop$/i)
  end

  auto_updates true
  depends_on :macos

  app "Bramble.app"

  uninstall launchctl: "Bramble",
            quit:      "app.bramble.desktop"

  zap trash: [
    "~/Library/Application Scripts/BHGR3PP64J.group.app.bramble.desktop",
    "~/Library/Application Support/*/*/NativeMessagingHosts/app.bramble.desktop.json",
    "~/Library/Application Support/*/NativeMessagingHosts/app.bramble.desktop.json",
    "~/Library/Application Support/app.bramble.desktop",
    "~/Library/Caches/app.bramble.desktop",
    "~/Library/Group Containers/BHGR3PP64J.group.app.bramble.desktop",
    "~/Library/HTTPStorages/app.bramble.desktop",
    "~/Library/Logs/app.bramble.desktop",
    "~/Library/Preferences/app.bramble.desktop.plist",
    "~/Library/Saved Application State/app.bramble.desktop.savedState",
    "~/Library/WebKit/app.bramble.desktop",
  ]
end
