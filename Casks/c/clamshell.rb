cask "clamshell" do
  version "2.0.0,240"
  sha256 "2811f6685173880e73b6326758afb01506a4dc6ea60471a7009981c837c401fc"

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
