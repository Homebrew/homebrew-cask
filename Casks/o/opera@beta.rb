cask "opera@beta" do
  version "120.0.5543.12"
  sha256 "ede2fcaf399766ab46b709e27c2c4eb3f56a4eacd1471d6f39244734fc4f08b9"

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
