cask 'slack' do
  version '2.9.0'
  sha256 '043b1a795a5f6465b97b3fdc69d6e77dd78f6c5c80cbec5423c75e868537dd6b'

  # downloads.slack-edge.com was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/mac_releases/Slack-#{version}-macOS.zip"
  name 'Slack'
  homepage 'https://slack.com/'

  auto_updates true

  app 'Slack.app'

  uninstall quit: 'com.tinyspeck.slackmacgap'

  zap delete: [
                '~/Library/Application Scripts/com.tinyspeck.slackmacgap',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*',
                '~/Library/Caches/com.tinyspeck.slackmacgap',
                '~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt',
                '~/Library/Containers/com.tinyspeck.slackmacgap',
                '~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService',
                '~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies',
                '~/Library/Group Containers/*.com.tinyspeck.slackmacgap',
                '~/Library/Group Containers/*.slack',
                '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Slack',
                '~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist',
                '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
              ]
end
