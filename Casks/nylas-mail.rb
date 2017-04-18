cask 'nylas-mail' do
  version '2.0.15-c770c80'
  sha256 '10abf7eeb07ba5c795b20825ee9d10e551bc0f8c4ef01b0128191e8968e1f430'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/NylasMail.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: 'e750c17e30543aafd5e6fd29db40150a57daa51e41e1b79af23befe04767c13a'
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
                '~/.nylas-mail',
              ]
end
