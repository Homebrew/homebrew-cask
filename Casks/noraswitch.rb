cask "noraswitch" do
  version "1.0.4"
  sha256 "74cddffc69bcb0554b7bfb671a47738583dafbc01926253f6860324aa80b9e1b"

  url "https://noraswitch.com/dmg/noraSwitch%20#{version.before_comma}.dmg"
  name "noraSwitch"
  desc "Window switcher"
  homepage "https://noraswitch.com/"

  livecheck do
    url "https://noraswitch.com/appcast.xml"
    strategy :sparkle
  end

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
