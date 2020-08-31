cask "qiyimedia" do
  version "20200828,11.8.5"
  sha256 "38f653bf813d80a8fc54be4bc332e015b9dc239ecc0cafddee01db2ddd7b7dba"

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
