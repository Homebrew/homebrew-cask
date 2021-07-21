cask "opera" do
  version "77.0.4054.277"
  sha256 "40c6bcf9d0efbc77efaaf3e9465e65dae881a29dc20dccf8c7237b38e8a10116"

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
