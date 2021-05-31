cask "opera" do
  version "76.0.4017.154"
  sha256 "415e9bc6f2f2620b8ee85a62ae635a55a33671dc48540a0aa2923fdadbf52e78"

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
