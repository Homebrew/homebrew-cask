cask 'nylas-n1' do
  version '0.4.19-d41e72c'
  sha256 '523e549896679cfe7fb3e6005fb3803212a47ea97a3d24a56a4318764c4b61c6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '34e9fb0ff67ade6e19873479cf88249205e5bdcf9d6751dbb53e7bf63d0d0bb9'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  auto_updates true

  app 'Nylas N1.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nylas.nylas-mail.sfl',
                '~/Library/Application Support/com.nylas.nylas-mail.ShipIt',
                '~/Library/Application Support/Nylas N1',
                '~/Library/Caches/com.nylas.nylas-mail',
                '~/Library/Caches/Nylas N1',
                '~/Library/Preferences/com.nylas.nylas-mail.plist',
                '~/Library/Saved Application State/com.nylas.nylas-mail.savedState',
              ]
end
