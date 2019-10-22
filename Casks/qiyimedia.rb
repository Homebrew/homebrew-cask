cask 'qiyimedia' do
  version '20191019,5.14.11-145'
  sha256 'a8679de37ecd863393bedf363b76cdbf4af727438a8e4ed765bcc50733dfce8b'

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
