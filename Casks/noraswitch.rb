cask "noraswitch" do
  version "1.0.2"
  sha256 "10e6219420a817f573335bfdd3a19167c2a77c9578d1abba22412f0167eab5f1"

  url "https://noraswitch.com/dmg/noraSwitch%20#{version}.dmg"
  appcast "https://noraswitch.com/appcast.xml"
  name "noraSwitch"
  homepage "https://noraswitch.com/"

  depends_on macos: ">= :mojave"

  app "noraSwitch.app"

  uninstall quit:      "com.trrn.noraSwitch",
            launchctl: "com.trrn.noraSwitch-LaunchAtLoginHelper"

  zap trash: [
    "~/Library/Application Support/com.trrn.noraSwitch",
    "~/Library/Caches/com.trrn.noraSwitch",
    "~/Library/Preferences/com.trrn.noraSwitch.plist",
  ]
end
