cask "opera@beta" do
  version "121.0.5600.12"
  sha256 "b08e17f3e282c794f1e866b771649382ebaf751007d857b7eef502b78eb243dc"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Web browser"
  homepage "https://www.opera.com/computer/beta"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-beta/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Opera Beta.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaNext",
    "~/Library/Caches/com.operasoftware.Installer.OperaNext",
    "~/Library/Caches/com.operasoftware.OperaNext",
    "~/Library/Cookies/com.operasoftware.OperaNext.binarycookies",
    "~/Library/HTTPStorages/com.operasoftware.Installer.OperaNext",
    "~/Library/Preferences/com.operasoftware.OperaNext.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaNext.savedState",
  ]
end
