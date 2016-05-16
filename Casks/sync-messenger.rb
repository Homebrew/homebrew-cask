cask 'sync-messenger' do
  version '1.10.2'
  sha256 'fb9f550d60fa21e91489f735f0c3f2fc3049118c698b2b3df35c4dad632fdb38'

  url 'https://sync-download.s3-ap-northeast-1.amazonaws.com/releases/sync-darwin-production-1456814986.zip'
  name 'Sync - a group chat app for business'
  homepage 'https://www.wantedly.com/sync'
  license :commercial

  app 'Sync.app'

  zap delete: [
                '~/Library/Application Support/sync-messenger-electron',
                '~/Library/Containers/com.wantedly.sync-desktop',
              ]
end
