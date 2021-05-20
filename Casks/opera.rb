cask "opera" do
  version "76.0.4017.137"
  sha256 "e9bc47d27743895db17ae03d71f5bdded2ea7e1a8a628657b603aed2ed0bf831"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  livecheck do
    url "https://ftp.opera.com/pub/opera/desktop/"
    strategy :page_match
    regex(/href=['"]?(\d+(?:\.\d+)*)['"]?/i)
  end

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Application Support/com.operasoftware.Opera/",
  ]
end
