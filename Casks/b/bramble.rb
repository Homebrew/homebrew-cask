cask "bramble" do
  version "0.18.0"
  sha256 "260119bf8284b1030fc2c5e81816ec3eb37aa7c4654155ecfba0dab1e9569e2b"

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
    "~/Library/Application Support/*/*/NativeMessagingHosts/app.bramble.desktop.json",
    "~/Library/Application Support/*/NativeMessagingHosts/app.bramble.desktop.json",
    "~/Library/Application Support/app.bramble.desktop",
    "~/Library/Caches/app.bramble.desktop",
    "~/Library/HTTPStorages/app.bramble.desktop",
    "~/Library/Logs/app.bramble.desktop",
    "~/Library/Preferences/app.bramble.desktop.plist",
    "~/Library/Saved Application State/app.bramble.desktop.savedState",
    "~/Library/WebKit/app.bramble.desktop",
  ]
end
