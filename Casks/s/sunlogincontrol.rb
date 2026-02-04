cask "sunlogincontrol" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "211", intel: "17"

  version "6.6.1.28025"
  sha256 arm:   "fb2386173da8a00bc7cd75bfb5b01bc938d5e3857bc885f12447db4a1fa6c950",
         intel: "48e40ab23744c3307392a5310104a706fae41299c07c26659ef4c0caa6528ace"

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
