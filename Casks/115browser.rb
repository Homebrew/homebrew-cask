cask "115browser" do
  version "23.9.3.6"
  sha256 "e9e2a9d18603453e18f70f4afabd37d0deb05975e3fcdfb5b364a98efcf20173"

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
