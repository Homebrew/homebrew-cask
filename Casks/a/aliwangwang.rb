cask "aliwangwang" do
  version "10.01.06M"
  sha256 "9957c3b7bdd031868af0187c0cb912f4c926f82221bbe34fb05f6eb1396fa5b0"

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

  caveats do
    requires_rosetta
  end
end
