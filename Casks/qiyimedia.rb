cask "qiyimedia" do
  version "20200818,11.8.1"
  sha256 "ae3b36a4d95cfab2ee99de92f3476a209b18305c547cc0b38f6ac860ca5e5907"

  url "https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_271.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_271.dmg",
          must_contain: version.before_comma
  name "爱奇艺视频"
  homepage "https://app.iqiyi.com/mac/player/index.html"

  depends_on macos: ">= :catalina"

  app "爱奇艺.app"

  zap trash: [
    "~/Library/Application Scripts/com.iqiyi.player",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl*",
    "~/Library/Containers/com.iqiyi.player",
  ]
end
