cask "opera" do
  version "92.0.4561.43"
  sha256 "d6a8fcde514850ee4e96e40e0a1375cfc81813c625ddc6492233568bf1796c1d"

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
