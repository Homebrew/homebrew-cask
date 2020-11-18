cask "opera" do
  version "72.0.3815.378"
  sha256 "a5976d51c728d42733f73c2793ded422c8833dd20d3921c5254aa50030c991f0"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  appcast "https://ftp.opera.com/pub/opera/desktop/"
  name "Opera"
  desc "Cross-platform web browser"
  homepage "https://www.opera.com/"

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Application Support/com.operasoftware.Opera/",
  ]
end
