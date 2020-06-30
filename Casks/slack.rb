cask 'slack' do
  version '4.7.0'
  sha256 '5d39320dff8e90c0ef9fe75080d68005086e32d4a39536cceb39d835b6ce324b'

  # downloads.slack-edge.com/ was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/x64/Slack-#{version}-macOS.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://slack.com/ssb/download-osx'
  name 'Slack'
  homepage 'https://slack.com/'

  auto_updates true
  conflicts_with cask: 'slack-beta'

  app 'Slack.app'

  uninstall quit: 'com.tinyspeck.slackmacgap'

  zap trash: [
               '~/Library/Application Scripts/com.tinyspeck.slackmacgap',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*',
               '~/Library/Application Support/Slack',
               '~/Library/Caches/com.tinyspeck.slackmacgap',
               '~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt',
               '~/Library/Containers/com.tinyspeck.slackmacgap',
               '~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService',
               '~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies',
               '~/Library/Group Containers/*.com.tinyspeck.slackmacgap',
               '~/Library/Group Containers/*.slack',
               '~/Library/Logs/Slack',
               '~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist',
               '~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist',
               '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
               '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
               '~/Library/WebKit/com.tinyspeck.slackmacgap',
             ]
end
