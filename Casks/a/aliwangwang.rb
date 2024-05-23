cask "aliwangwang" do
  version "10.01.06M"
  sha256 "9b23e1a1cd067893fef407b3037ce6c4072182a9a8a3294d236e0a3a26d020a2"

  url "https://download.alicdn.com/wangwang/AliWangWang_(#{version}).dmg",
      verified: "download.alicdn.com/wangwang/"
  name "AliWangwang"
  name "阿里旺旺"
  desc "Shopping communication tool for Taobao and Tmall users"
  homepage "https://pages.tmall.com/wow/qnww/act/index"

  livecheck do
    url "https://g.alicdn.com/im/ww-home/0.0.10/detail.min.js"
    regex(/AliWangWang[._-]v?\((\d+(?:\.\d+)+\w+)\)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AliWangwang.app"

  zap trash: [
    "~/Library/Application Support/AliWangwang",
    "~/Library/Caches/com.taobao.Aliwangwang",
    "~/Library/HTTPStorages/com.taobao.Aliwangwang",
    "~/Library/HTTPStorages/com.taobao.Aliwangwang.binarycookies",
    "~/Library/Preferences/com.taobao.Aliwangwang.plist",
    "~/Library/Saved Application State/com.taobao.Aliwangwang.savedState",
    "~/Library/WebKit/com.taobao.Aliwangwang",
  ]
end
