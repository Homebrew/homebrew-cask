cask "displays" do
  version "1.9.7,108"
  sha256 "15cbc743f29f241d87b6c79dc53a2e3c3b1294ede1e00dfc3723a7db7a9c4088"

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
