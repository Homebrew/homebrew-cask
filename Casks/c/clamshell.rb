cask "clamshell" do
  version "1.4.24,228"
  sha256 "a4d8950e1a387d5b573cb9f53484f1eb78e9ee1a12f84cb65d170aba795997c0"

  url "https://clamshell.dev/Clamshell-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Clamshell"
  desc "Keep the computer awake with the lid closed and the built-in display dark"
  homepage "https://clamshell.dev/"

  livecheck do
    url "https://clamshell.dev/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Clamshell.app"

  uninstall launchctl: "com.rathonyi.clamshell.agent",
            quit:      "com.rathonyi.clamshell"

  zap trash: [
    "~/Library/Application Support/Clamshell",
    "~/Library/Caches/com.rathonyi.clamshell",
    "~/Library/HTTPStorages/com.rathonyi.clamshell",
    "~/Library/Preferences/com.rathonyi.clamshell.plist",
  ]
end
