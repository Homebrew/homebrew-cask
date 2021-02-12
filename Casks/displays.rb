cask "displays" do
  version "1.9.8,110"
  sha256 "33357f298d380513d89e6780eccad7edc07c816c844ac7c6f3c385992bff3a5f"

  url "https://www.jibapps.com/ressources/displays/files/Displays.#{version.before_comma}.zip"
  name "Displays"
  desc "Monitor resolution and settings manager"
  homepage "https://www.jibapps.com/apps/displays/"

  livecheck do
    url "https://www.jibapps.com/ressources/displays/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Displays.app"

  zap trash: [
    "~/Library/Application Support/com.jibapps.Displays",
    "~/Library/Saved Application State/com.jibapps.DisplaysMigrator.savedState",
    "~/Library/Preferences/com.jibapps.Displays.plist",
    "~/Library/Caches/com.jibapps.Displays",
  ]
end
