cask "115browser" do
  version "24.4.0.1"
  sha256 "7a3b23663ce88fcc16c48e043c37744965a7e71225bf9c0a3f392beef3c75e76"

  url "https://down.115.com/client/mac/115pc_#{version}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome?callback=get_version"
    strategy :page_match
    regex(/115pc_(\d+(\.\d+)*).dmg/i)
  end

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
