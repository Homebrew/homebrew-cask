cask "115browser" do
  version "23.9.2.1"
  sha256 "c05c482548616ed90eecd2217f524bd42ca5972432ed70a3e083f3a5cea6abd0"

  url "https://down.115.com/client/mac/115pc_#{version}.dmg"
  appcast "https://appversion.115.com/1/web/1.0/api/chrome?callback=get_version"
  name "115Browser"
  name "115浏览器"
  homepage "https://pc.115.com/"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
