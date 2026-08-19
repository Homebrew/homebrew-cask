cask "macpulse" do
  version "1.2.12"
  sha256 "ec8b312775fc923fd38c030ff59ccd3d12713e957bf0422194b6eedfe3393237"

  url "https://macpulse.app/downloads/MacPulse-#{version}.dmg"
  name "MacPulse"
  desc "System monitoring dashboard with historical analytics"
  homepage "https://macpulse.app/"

  livecheck do
    url "https://macpulse.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacPulse.app"

  uninstall quit: "com.jupe.MacPulse"

  zap trash: [
    "~/Library/Application Scripts/com.jupe.MacPulse.MacPulseWidgets",
    "~/Library/Application Support/com.jupe.MacPulse",
    "~/Library/Application Support/MacPulse",
    "~/Library/Caches/com.jupe.MacPulse",
    "~/Library/Containers/com.jupe.MacPulse.MacPulseWidgets",
    "~/Library/HTTPStorages/com.jupe.MacPulse",
    "~/Library/Preferences/com.jupe.MacPulse.plist",
    "~/Library/Preferences/com.jupe.MacPulse.systemcache.plist",
  ]
end
