cask 'nylas-mail' do
  version '1.0.39-36e4906'
  sha256 'c47951eebf2efb2468c3acb54ee5126d15a64771a9fbdcae69fe6311caeb3915'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/NylasMail.zip"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '8742f13aabbd3fb131fc4ff66ddb305c074a007e94f6dd118a3dc357150b3fe2'
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
