cask 'slack' do
  version '4.0.0'
  sha256 'de31ed2d474748ac8e93f48a1237872531573cc211b33c0cbaac936a820620a6'

  # downloads.slack-edge.com was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/mac_releases/Slack-#{version}-macOS.zip"
  name 'Slack'
  homepage 'https://slack.com/'

  auto_updates true

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
               '~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist',
               '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
               '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
             ]
end
