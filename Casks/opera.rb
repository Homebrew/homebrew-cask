cask "opera" do
  version "84.0.4316.14"
  sha256 "70dc18bf11e7b1541b8e5017138cfd3855b22e2daf74e9d679803775b4e37033"

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
