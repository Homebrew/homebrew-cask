cask 'qiyimedia' do
  version '20191226,5.17.5-210'
  sha256 'bb5c4f799de73959f98e49430e16278cf59e984eb275a6bd1ee19f22ee2bb91c'

  url 'https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_000.dmg'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_000.dmg',
          configuration: version.before_comma
  name '爱奇艺视频'
  homepage 'https://app.iqiyi.com/mac/player/index.html'

  app '爱奇艺.app'

  zap trash: [
               '~/Library/Application Scripts/com.iqiyi.player',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl*',
               '~/Library/Containers/com.iqiyi.player',
             ]
end
