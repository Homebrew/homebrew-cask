cask "displays" do
  version "1.9.5"
  sha256 "d71b0f41935eb557ff49d7c2b88f7e2e370fba7efc6358502f19874f88039cb5"

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
