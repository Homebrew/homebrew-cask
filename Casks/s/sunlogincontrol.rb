cask "sunlogincontrol" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "211", intel: "17"

  version "6.6.1.26890"
  sha256 arm:   "300b2539e8f081c2d320a331dd989fa247afa51938dfc7dd1d1e2bde8bae5214",
         intel: "aa2d8950d857c9f7d0d0babc2aa76523a2d54e620503e2c9a495b7544c6ae82f"

  url "https://down.oray.com/sl/mac/SunloginRemote_#{version}_#{arch}.dmg"
  name "SunloginControl"
  name "向日葵控制端"
  desc "Target component of remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=#{livecheck_id}"
    regex(/SunloginRemote[._-]?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  pkg "SunloginRemote.pkg"

  uninstall quit:    "com.oray.remote",
            pkgutil: "com.oray.remote"

  zap trash: [
    "~/Library/Caches/com.oray.remote",
    "~/Library/HTTPStorages/com.oray.remote.binarycookies",
    "~/Library/Preferences/com.oray.remote.plist",
    "~/Library/Saved Application State/com.oray.remote.savedState",
    "~/Library/WebKit/com.oray.remote",
    "~/Sunlogin",
  ]
end
