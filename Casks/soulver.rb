cask "soulver" do
  version "3.4.6-127"
  sha256 "20aa15ec7248e007c80675292d5f5428e394787ab45546805c9a4f43ff41fb0b"

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast "https://soulver.app/mac/sparkle/appcast.xml"
  name "Soulver"
  homepage "https://soulver.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Soulver #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Soulver 3",
    "~/Library/Application Support/app.soulver.mac",
    "~/Library/Preferences/app.soulver.mac.plist",
  ]
end
