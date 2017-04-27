cask 'nylas-mail' do
  version '2.0.28-37242ab'
  sha256 'e6908f6f8388298152248b5aa2f78c49126ad139bb3b9eaa96775d8cc8682fda'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/NylasMail.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '165a6c8f6b769756c90f216ee0374ea9537910ece6f84f5d4d88d0db482acdbd'
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
