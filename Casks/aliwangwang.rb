cask "aliwangwang" do
  version "10.01.03M"
  sha256 "90a223cd0e244cdd58f53abafc8ab3293db01be94c3e7437189195afbd3df44e"

  url "https://download.alicdn.com/wangwang/AliWangWang_(#{version}).dmg",
      verified: "download.alicdn.com/wangwang/"
  appcast "https://jdy.tmall.com/version/check?version=#{version}&nick=cask&platform=macww"
  name "AliWangwang"
  desc "Shopping communication tool"
  homepage "https://pages.tmall.com/wow/qnww/act/index"

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
