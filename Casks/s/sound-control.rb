cask "sound-control" do
  version "3.4.2"
  sha256 "7f3e54ea673ad4a483a3406cc2d341ec314c87e567d3f367d9b3b8423273bc4b"

  url "https://s3.amazonaws.com/staticz.net/downloads/soundcontrol/SoundControl_#{version}.dmg"
  name "Sound Control"
  desc "Per-app audio controls"
  homepage "https://staticz.com/soundcontrol/"

  livecheck do
    url "https://staticz.com/download/4297/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Sound Control.app"

  uninstall launchctl: [
              "com.static.soundsiphon.inputagent",
              "com.staticz.audio.soundsiphon.playeragent",
              "com.staticz.soundsiphon.bridgedaemon",
            ],
            quit:      "com.staticz.SoundControl"

  zap trash: [
    "/Library/Audio/Plug-Ins/HAL/_SoundSiphon.driver",
    "/Library/LaunchAgents/com.staticz.soundsiphon.inputagent.plist",
    "/Library/LaunchAgents/com.staticz.soundsiphon.playeragent.plist",
    "/Library/LaunchDaemons/com.staticz.soundsiphon.bridgedaemon.plist",
    "/Library/Preferences/Audio/Data/_SoundSiphon.driver",
    "~/Library/Application Support/com.staticz.SoundControl",
    "~/Library/Caches/com.staticz.SoundControl",
    "~/Library/Cookies/com.staticz.SoundControl.binarycookies",
    "~/Library/Cookies/com.staticz.SoundControl.binarycookies*",
    "~/Library/HTTPStorages/com.staticz.SoundControl.binarycookies",
    "~/Library/Preferences/com.staticz.SoundControl.plist",
    "~/Library/Preferences/com.staticz.soundsiphon.playeragent.plist",
  ]
end
