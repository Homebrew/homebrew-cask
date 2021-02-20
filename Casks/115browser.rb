cask "115browser" do
  version "23.10.1.5"
  sha256 "5d544629d12264649351dd20f74930346470017f781d8be4febe21373b46eb5f"

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
