cask "bramble" do
  version "0.7.0"
  sha256 "ec5b1b988ffda00a2e4cf58757eb6897c8d5b4d04c9be33ac17e551c73497d68"

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
