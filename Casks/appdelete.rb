cask "appdelete" do
  version "4.3.3"
  sha256 "ac7ce8a55ad74eed68d79ccf69284a1174bf74a2a376f73c63e51ca8c4687547"

  url "https://www.reggieashworth.com/downloads/AppDelete.dmg"
  appcast "https://www.reggieashworth.com/AD#{version.major}Appcast.xml"
  name "AppDelete"
  desc "App uninstaller"
  homepage "https://www.reggieashworth.com/appdelete.html"

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
