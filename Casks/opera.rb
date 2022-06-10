cask "opera" do
  version "87.0.4390.45"
  sha256 "8c6f1163dde3665d6f9de6d09224b66ed2993557508cd8d0fd0e0b95a3013752"

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
