cask "opera-air" do
  version "117.0.5408.231"
  sha256 "67e96478bde305d785ec6356f62c2c53e9348e808a56905eae22ab18fbc8c1bc"

  url "https://get.geo.opera.com/pub/opera_air/#{version}/mac/Opera_Air_#{version}_Setup.dmg"
  name "Opera Air"
  desc "Web browser"
  homepage "https://www.opera.com/air"

  livecheck do
    url "https://ftp.opera.com/pub/opera_air/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Opera Air.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaAir",
    "~/Library/Caches/com.operasoftware.Installer.OperaAir",
    "~/Library/Caches/com.operasoftware.OperaAir",
    "~/Library/Cookies/com.operasoftware.OperaAir.binarycookies",
    "~/Library/HTTPStorages/com.operasoftware.Installer.OperaAir",
    "~/Library/Preferences/com.operasoftware.OperaAir.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaAir.savedState",
  ]
end
