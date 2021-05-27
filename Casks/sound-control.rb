cask "sound-control" do
  version "2.6.2,4297"
  sha256 "041812f2361a0e0afb614f77137b9f7f083827feb7c971d0ed6e52ce0b4ca5a6"

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
