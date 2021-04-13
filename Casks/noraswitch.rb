cask "noraswitch" do
  version "1.0.3,51"
  sha256 "38519f5cf61d1278dd5db438e7c9a1fe210a39ee3c200b9ffc2564feaf1971c2"

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
