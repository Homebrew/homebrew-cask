cask "aliwangwang" do
  version "20180413-1510-8.00.44"
  sha256 "06de2d82ffb839350ee54bd16227f910b7709563f86ceb67d32ff0e050fb6515"

  url "https://alimarket.taobao.com/markets/qnww/aliww-download?wh_from=macos"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://alimarket.taobao.com/markets/qnww/aliww-download?wh_from=macos"
  name "Ali Wangwang"
  homepage "https://alimarket.taobao.com/markets/qnww/portal-group/ww/index"

  auto_updates true

  app "AliWangwang.app"

  uninstall quit: "com.taobao.aliwangwang"

  zap trash: [
    "~/Library/Caches/com.taobao.aliwangwang",
    "~/Library/Containers/com.taobao.aliwangwang",
    "~/Library/Internet Plug-Ins/WangwangPlugin.plugin",
    "~/Library/Preferences/com.taobao.aliwangwang.plist",
    "~/Library/Saved Application State/com.taobao.aliwangwang.savedState",
  ]
end
