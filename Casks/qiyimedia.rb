cask "qiyimedia" do
  version "20200908,11.9.0"
  sha256 "ff75dd8645e2577347a76a8a5a0972655ef4c77497d999761f668b8e7c5a5850"

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
