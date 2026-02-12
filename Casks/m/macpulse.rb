cask "macpulse" do
  version "1.0.9.4"
  sha256 "068741c692215eb3494fcd141e0afad8c818648b56efd71ce1e2462814634c6f"

  url "https://macpulse.app/downloads/MacPulse-#{version}.dmg"
  name "MacPulse"
  desc "System monitoring dashboard with historical analytics"
  homepage "https://macpulse.app/"

  livecheck do
    url "https://macpulse.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MacPulse.app"

  zap trash: [
    "~/Library/Application Support/MacPulse",
    "~/Library/Caches/com.jupe.MacPulse",
    "~/Library/HTTPStorages/com.jupe.MacPulse",
    "~/Library/Preferences/com.jupe.MacPulse.plist",
  ]
end
