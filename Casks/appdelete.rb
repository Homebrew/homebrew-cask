cask "appdelete" do
  version "4.3.3"
  sha256 :no_check

  url "http://www.reggieashworth.com/downloads/AppDelete.dmg"
  name "AppDelete"
  desc "App uninstaller"
  homepage "http://www.reggieashworth.com/appdelete.html"

  livecheck do
    url "http://www.reggieashworth.com/AD#{version.major}Appcast.xml"
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

  caveats do
    discontinued
  end
end
