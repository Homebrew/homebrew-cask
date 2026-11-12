cask "thunder" do
  version "5.80.9.66681"
  sha256 "f02b24fa8d294898c18e8dd8f55eb099ec2cb87431a1f344dc8f20ec64896617"

  url "https://down.sandai.net/mac/thunder_#{version}.dmg"
  name "Thunder"
  name "迅雷"
  desc "VPN and WiFi proxy"
  homepage "https://www.xunlei.com/"

  livecheck do
    url "https://dl.xunlei.com"
    regex(/thunder[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "Thunder.app"

  uninstall quit: "com.xunlei.Thunder"

  zap trash: [
    "~/Library/Application Scripts/com.xunlei.Thunder.Thunder-Extension",
    "~/Library/Application Support/com.xunlei.Thunder",
    "~/Library/Application Support/Thunder",
    "~/Library/Caches/com.xunlei.Thunder",
    "~/Library/Caches/com.xunlei.XLPlayer",
    "~/Library/Containers/com.xunlei.Thunder.Thunder-Extension",
    "~/Library/Cookies/com.xunlei.Thunder.binarycookies",
    "~/Library/HTTPStorages/com.xunlei.Thunder",
    "~/Library/Preferences/com.xunlei.Thunder.loginSDK.plist",
    "~/Library/Preferences/com.xunlei.Thunder.plist",
    "~/Library/Preferences/com.xunlei.XLPlayer.plist",
    "~/Library/Saved Application State/com.xunlei.Thunder.savedState",
    "~/Library/Saved Application State/com.xunlei.XLPlayer.savedState",
    "~/Library/WebKit/com.xunlei.Thunder",
  ]
end
