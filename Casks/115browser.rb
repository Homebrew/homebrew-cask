cask "115browser" do
  version "24.0.2.4"
  sha256 "db8eb6f3187a1a3d140ad7c8eff819dcfbccd694281250e2222d1ebc34eec33d"

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
