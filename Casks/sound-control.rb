cask "sound-control" do
  version "2.6.0,4297"
  sha256 "d7b323dad1b9351b29f0a7ec66d1c428e59d155c3c70c64d1ae0913031bf2b98"

  url "https://staticz.com/download/#{version.after_comma}/"
  appcast "http://staticz.net/updates/soundcontrol.rss"
  name "Sound Control"
  homepage "https://staticz.com/soundcontrol/"

  auto_updates true

  app "Sound Control.app"

  uninstall launchctl: [
    "com.staticz.soundsiphon.bridgedaemon",
    "com.staticz.audio.soundsiphon.playeragent",
    "com.static.soundsiphon.inputagent",
  ],
            quit:      "com.staticz.SoundControl"
end
