cask "displays" do
  version "1.9.10"
  sha256 "3e40e462fd9bf1a881c996cbc5695f1f1772dafeab8726a52be94d4410caf139"

  url "https://www.jibapps.com/ressources/displays/files/Displays.#{version}.zip"
  name "Displays"
  desc "Monitor resolution and settings manager"
  homepage "https://www.jibapps.com/apps/displays/"

  livecheck do
    url "https://www.jibapps.com/ressources/displays/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Displays.app"

  zap trash: [
    "~/Library/Application Support/com.jibapps.Displays",
    "~/Library/Caches/com.jibapps.Displays",
    "~/Library/Preferences/com.jibapps.Displays.plist",
    "~/Library/Saved Application State/com.jibapps.DisplaysMigrator.savedState",
  ]
end
