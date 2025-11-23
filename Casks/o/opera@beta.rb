cask "opera@beta" do
  version "124.0.5705.12"
  sha256 "4f851cafc363ffe5ffd166c9c26d61c64b1eb07b2ddbfa4787a482c8290937c8"

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
