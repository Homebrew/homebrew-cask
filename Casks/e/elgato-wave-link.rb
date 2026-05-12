cask "elgato-wave-link" do
  version "3.1.1,2484"
  sha256 "6a8cc22b65b9e919122b9d0759ac5d3aee30861456224d5ea4c47fb206d17443"

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
    "~/Library/Containers/com.elgato.WaveLink*",
    "~/Library/Group Containers/Y93VXCB8Q5.group.com.corsair.elgato",
    "~/Library/Logs/ElgatoWaveLink",
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
