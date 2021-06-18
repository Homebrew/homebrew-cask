cask "sound-control" do
  version "2.6.2,5156"
  sha256 "041812f2361a0e0afb614f77137b9f7f083827feb7c971d0ed6e52ce0b4ca5a6"

  url "https://staticz.com/download/#{version.after_comma}/"
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
end
