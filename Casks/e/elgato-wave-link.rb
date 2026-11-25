cask "elgato-wave-link" do
  version "3.5.0,3633"
  sha256 "e464493fdbdeb5a7e6cdd68f1d3c6972de3e12241caea1b6ebf1782d30001b85"

  url "https://edge.elgato.com/egc/macos/ewlm/release/ElgatoWaveLink-#{version.csv.first}.#{version.csv.second}.dmg",
      user_agent: :fake
  name "Elgato Wave Link"
  desc "Software custom-built for content creation"
  homepage "https://www.elgato.com/ww/en/s/wave-link-app"

  livecheck do
    url "https://gc-updates.elgato.com/mac/ewlm-update/final/feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Elgato Wave Link.app"

  uninstall launchctl:  "com.elgato.WaveLink",
            quit:       "com.elgato.WaveLink*",
            login_item: "Elgato Wave Link",
            pkgutil:    "com.elgato.WaveLink#{version.major}VirtualAudio",
            delete:     [
              "/Applications/Elgato Wave Link.app",
              "~/Library/LaunchAgents/com.elgato.WaveLink.plist",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.elgato.WaveLink*",
    "~/Library/Application Scripts/group.com.elgato.WaveLink#{version.major}",
    "~/Library/Application Support/com.elgato.WaveLink#{version.major}*",
    "~/Library/Caches/com.elgato.WaveLink#{version.major}*",
    "~/Library/Containers/com.elgato.WaveLink*",
    "~/Library/Group Containers/group.com.elgato.WaveLink#{version.major}",
    "~/Library/Group Containers/Y93VXCB8Q5.group.com.corsair.elgato",
    "~/Library/HTTPStorages/com.elgato.WaveLink#{version.major}*",
    "~/Library/Logs/ElgatoWaveLink",
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink#{version.major}.plist",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
