cask "opera" do
  version "80.0.4170.40"
  sha256 "df5e58fcd3645909a097e8279cc7b29767cf9b5839b0ae1e2bbbb70fec4aa02d"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  livecheck do
    url "https://ftp.opera.com/pub/opera/desktop/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.Opera/",
    "~/Library/Preferences/com.operasoftware.Opera.plist",
  ]
end
