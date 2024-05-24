cask "qqbrowser" do
  arch arm: "m1", intel: "intel"

  sha256 :no_check

  on_arm do
    version "5.0.4.213"
  end
  on_intel do
    version "5.0.4.212"
  end

  url "https://pcchannel.imtt.qq.com/channel/QQBrowser_#{arch}.dmg"
  name "QQBrowser"
  name "QQ浏览器"
  desc "QQ web browser"
  homepage "https://browser.qq.com/mac/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.tencent.qqbrowserappmac"].short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "QQBrowser.app"

  zap trash: [
    "~/Library/Application Support/QQBrowser3",
    "~/Library/Caches/QQBrowser3",
    "~/Library/HTTPStorages/com.tencent.qqbrowserappmac",
    "~/Library/HTTPStorages/com.tencent.qqbrowserappmac.binarycookies",
    "~/Library/Preferences/com.tencent.qqbrowserappmac.plist",
    "~/Library/Saved Application State/com.tencent.qqbrowserappmac.saveState",
  ]
end
