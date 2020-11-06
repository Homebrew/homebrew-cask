cask "sound-control" do
  version "2.5.0,5156"
  sha256 "b8c2d91aa560248eda0938770c232d31b0b87a95872e4c4df2a6a1db7c514cfb"

  # staticz.net/ was verified as official when first introduced to the cask
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
