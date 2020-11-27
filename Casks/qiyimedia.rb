cask "qiyimedia" do
  version "202011261736,11.11.5"
  sha256 "cf2f8d5c8165fba74920604ea13effccf4e6e5b249ae1a4d30237a0123884059"

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
