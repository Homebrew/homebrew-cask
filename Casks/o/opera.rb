cask "opera" do
  version "117.0.5408.39"
  sha256 "fa631cde7c10c8e48a091934965fa8062ec60464aec162c72af85c6140ee5f48"

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
