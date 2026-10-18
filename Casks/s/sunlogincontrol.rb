cask "sunlogincontrol" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "211", intel: "17"

  version "6.7.1.30758"
  sha256 arm:   "b9a92035a4956bfbfaf6c51cdcf7c61dd5a499046b31b630e45642a3a592a96e",
         intel: "421c3a0d2ed80cdbcd125edbc3a382f6ce23c1174d6e87503b7fb762b2f6ef67"

  url "https://down.oray.com/sl/mac/SunloginRemote_#{arch}_#{version}.dmg"
  name "SunloginControl"
  name "向日葵控制端"
  desc "Target component of remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=#{livecheck_id}"
    strategy :header_match
  end

  depends_on :macos

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
