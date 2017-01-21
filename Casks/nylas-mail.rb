cask 'nylas-mail' do
  version '1.0.11-d1249b7'
  sha256 '2065a5d26a73c1b9d3195b010fc8a17e0d3a8ae1f8b6945a72249ca403b5ac48'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/NylasMail.zip"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: 'a2be2bc86628622ab09ddbbc57e146487cfa2a701e2214f6dce51f79b7639b06'
  name 'Nylas Mail'
  homepage 'https://www.nylas.com/'

  auto_updates true

  app 'Nylas Mail.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nylas.nylas-mail.sfl',
                '~/Library/Application Support/com.nylas.nylas-mail.ShipIt',
                '~/Library/Application Support/Nylas Mail',
                '~/Library/Caches/com.nylas.nylas-mail',
                '~/Library/Caches/com.nylas.nylas-mail.ShipIt',
                '~/Library/Caches/Nylas Mail',
                '~/Library/Preferences/com.nylas.nylas-mail.plist',
                '~/Library/Saved Application State/com.nylas.nylas-mail.savedState',
              ]
end
