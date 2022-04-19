cask "i4tools" do
  version "1.13.010"
  sha256 "d7e3116e478258dd946788f7a3774f8b71303383d612b2d105bf92f72cab146e"

  url "https://d-updater.i4.cn/i4mac/20220418/0/i4Tools_v#{version}.dmg"
  name "i4Tools"
  name "爱思助手"
  desc "Mobile device management software"
  homepage "https://www.i4.cn/"

  livecheck do
    url "https://url.i4.cn/fqIBBbaa"
    strategy :header_match
    regex(/i4Tools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

  pkg "i4tools.pkg"

  uninstall quit:    "cn.i4tools.mac",
            pkgutil: "cn.i4tools.mac"

  zap trash: [
    "~/Library/Application Support/i4Airplayer/",
    "~/Library/Application Support/i4Tools/",
    "~/Library/Preferences/cn.i4tools.mac.plist",
    "~/Library/Preferences/org.example.i4AirPlayer.plist",
    "~/Library/Saved Application State/org.example.i4AirPlayer.savedState",
  ]
end
