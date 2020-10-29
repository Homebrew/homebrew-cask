cask "opera" do
  version "72.0.3815.186"
  sha256 "1f6b025093bbcd25dc1fbd76ea68e192e0b10c7f843838d6d80155fbf3e5cebe"

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
