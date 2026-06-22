cask "opera" do
  version "132.0.5905.73"
  sha256 "df959c52640d3c410f9cf54b4644588d54d9d47d22b6d14362f5b7969283f392"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  livecheck do
    url "https://ftp.opera.com/pub/opera/desktop/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :big_sur

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
