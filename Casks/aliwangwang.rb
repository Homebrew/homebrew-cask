cask "aliwangwang" do
  version "10.01.02M"
  sha256 "5a13d4890944a2a64b862cda41f9786e344b5e520e218dc37e9090ae282b0d8a"

  url "https://download.alicdn.com/wangwang/AliWangWang_(#{version}).dmg",
      verified: "download.alicdn.com/wangwang/"
  name "AliWangwang"
  desc "Shopping communication tool"
  homepage "https://pages.tmall.com/wow/qnww/act/index"

  livecheck do
    url "https://g.alicdn.com/im/ww-home/0.0.5/detail.min.js"
    regex(/AliWangWang[._-]v?\((\d+(?:\.\d+)+\w+)\)\.dmg/i)
  end

  auto_updates true

  app "AliWangwang.app"

  uninstall quit: "com.taobao.Aliwangwang"

  zap trash: [
    "~/Library/Application Support/AliWangwang",
    "~/Library/Caches/com.taobao.Aliwangwang",
    "~/Library/Containers/com.taobao.Aliwangwang",
    "~/Library/HTTPStorages/com.taobao.Aliwangwang",
    "~/Library/HTTPStorages/com.taobao.Aliwangwang.binarycookies",
    "~/Library/Preferences/com.taobao.Aliwangwang.plist",
    "~/Library/Saved Application State/com.taobao.Aliwangwang.savedState",
    "~/Library/WebKit/com.taobao.Aliwangwang",
  ]
end
