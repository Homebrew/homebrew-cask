cask "sound-control" do
  version "3.1.1,4297"
  sha256 "cab0ae58a8f06b222b88c703b57306d402c4be93a495041894b2801e94cf857d"

  url "https://staticz.com/download/#{version.csv.second}/"
  name "Sound Control"
  desc "Per-app audio controls"
  homepage "https://staticz.com/soundcontrol/"

  livecheck do
    url :homepage
    regex(%r{/download/(\d+)}i)
    strategy :page_match do |page, regex|
      build = page[regex, 1]
      version = page[/Sound Control v?(\d+(?:\.\d+)+) Release Notes/i, 1]
      next if version.blank? || build.blank?
      
      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
