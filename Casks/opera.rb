cask "opera" do
  version "75.0.3969.218"
  sha256 "547f22977bd744941f0d68175853af0aaee987e209ae29a096c1799fddf3ff12"

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
