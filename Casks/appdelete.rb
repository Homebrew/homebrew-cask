cask "appdelete" do
  version "4.3.3"
  sha256 :no_check

  url "https://www.reggieashworth.com/downloads/AppDelete.dmg"
  name "AppDelete"
  desc "App uninstaller"
  homepage "https://www.reggieashworth.com/appdelete.html"

  livecheck do
    url "https://www.reggieashworth.com/AD#{version.major}Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "AppDelete.app"

  zap trash: [
    "~/Library/Application Support/AppDelete",
    "~/Library/Caches/com.apps4macs.AppDelete",
    "~/Library/Preferences/com.apps4macs.AppDelete.plist",
    "~/Library/Saved Application State/com.apps4macs.AppDelete.savedState",
    "~/Library/Services/AppDelete.workflow",
  ]
end
