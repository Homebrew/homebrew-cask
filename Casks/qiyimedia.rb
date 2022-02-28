cask "qiyimedia" do
  version "13.2.1"
  sha256 :no_check

  url "https://static-d.iqiyi.com/ext/common/iQIYIMedia_271.dmg"
  name "iQIYI"
  name "爱奇艺视频"
  desc "Interactive media player"
  homepage "https://app.iqiyi.com/mac/player/index.html"

  livecheck do
    url "https://app.iqiyi.com/mac/player/index.html"
    regex(/最新版本：(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  app "爱奇艺.app"

  zap trash: [
    "~/Library/Application Scripts/com.iqiyi.player.QYWidget",
    "~/Library/Application Scripts/com.iqiyi.player",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl*",
    "~/Library/Containers/com.iqiyi.player.QYWidget",
    "~/Library/Group Containers/group.com.qiyi",
  ]
end
