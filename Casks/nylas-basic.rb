cask 'nylasmail' do
  version '1.0.8-a638f3e'
  sha256 '5f7ecfe628370f67c22ed1587518b8266ee8653f833efab445997224189549cc'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/NylasMail.zip"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '5f7ecfe628370f67c22ed1587518b8266ee8653f833efab445997224189549cc'
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
