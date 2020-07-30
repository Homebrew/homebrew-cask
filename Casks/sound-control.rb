cask "sound-control" do
  version "2.5.0"
  sha256 "2c327d85678ab0a15c4603c90fcdeac65b43b6488df1e99b2e58213175dfd6ec"

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
