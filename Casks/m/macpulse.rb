cask "macpulse" do
  version "1.1.8"
  sha256 "c7f0c5f7a21c653741cfede9d0a62431266956b4512640f9cf0050bac7d1c813"

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
