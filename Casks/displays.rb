cask "displays" do
  version "1.9.9,116"
  sha256 "ffd4d674968ffbfd015d254290018e99063caf8dddeaff81891646b22773b569"

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
