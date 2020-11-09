cask "displays" do
  version "1.9.6"
  sha256 "a8ac215d8334a09e1dc8da4b9db12266512087b19842d231e6e92773e585d478"

  url "https://www.jibapps.com/ressources/displays/files/Displays.#{version}.zip"
  appcast "https://www.jibapps.com/ressources/displays/appcast.xml"
  name "Displays"
  desc "Monitor resolution and settings manager"
  homepage "https://www.jibapps.com/apps/displays/"

  auto_updates true

  app "Displays.app"

  zap trash: [
    "~/Library/Application Support/com.jibapps.Displays",
    "~/Library/Saved Application State/com.jibapps.DisplaysMigrator.savedState",
    "~/Library/Preferences/com.jibapps.Displays.plist",
    "~/Library/Caches/com.jibapps.Displays",
  ]
end
