cask "sound-control" do
  version "2.7.0,5156"
  sha256 "1ba6f8f52a10c668b123fcbc434123794b2d652bacfb87b3efa213381bf807e7"

  url "https://staticz.com/download/#{version.csv.second}/"
  name "Sound Control"
  desc "Per-app audio controls"
  homepage "https://staticz.com/soundcontrol/"

  livecheck do
    url "http://staticz.net/updates/soundcontrol.rss"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/download/(\d+)/}i, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Sound Control.app"

  uninstall launchctl: [
              "com.staticz.soundsiphon.bridgedaemon",
              "com.staticz.audio.soundsiphon.playeragent",
              "com.static.soundsiphon.inputagent",
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
