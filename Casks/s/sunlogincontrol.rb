cask "sunlogincontrol" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "211", intel: "17"

  version "6.1.0.62632"
  sha256 arm:   "030de0ef4a4e8e08afa8bc2f02bb70e1476eae1e33d3a119b7381ba3ec96f3c7",
         intel: "0af5ae83eda37356fe2eafce26ccda5b4ba6ee180057fdf77b716990b5947fb9"

  url "https://down.oray.com/sunlogin/mac/SunloginRemote_#{version}_#{arch}.dmg"
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
