cask "soulver" do
  version "3.4.11-158"
  sha256 "2233c335117b9dca410718bbcea774e6568cbb2e9cdcb0a15a06819a1f33f1c6"

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast "https://soulver.app/mac/sparkle/appcast.xml"
  name "Soulver"
  desc "Notepad with a built-in calculator"
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
