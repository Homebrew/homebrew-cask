cask "opera" do
  version "117.0.5408.35"
  sha256 "3317722b785fbad42f57662f70b31a1ac4f5992f9febc541f5a10aeaac398e10"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  livecheck do
    url "https://ftp.opera.com/pub/opera/desktop/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Opera.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.Opera",
    "~/Library/Caches/com.operasoftware.Installer.Opera",
    "~/Library/Caches/com.operasoftware.Opera",
    "~/Library/Cookies/com.operasoftware.Opera.binarycookies",
    "~/Library/HTTPStorages/com.operasoftware.Installer.Opera",
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Saved Application State/com.operasoftware.Opera.savedState",
  ]
end
