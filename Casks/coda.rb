cask 'coda' do
  version '2.5.19'
  sha256 '5d734cdac6b47b07ca8ef9224611b0f7c8a57f1ec7b66eb7befdfcaf20896548'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  name 'Panic Coda'
  homepage 'https://panic.com/coda/'

  depends_on macos: '>= :lion'

  app 'Coda 2.app'

  zap delete: [
                '~/Library/Application Support/Coda 2',
                '~/Library/Application Support/Growl/Tickets/Coda 2.growlTicket',
                '~/Library/Caches/com.panic.Coda2',
                '~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda2.help',
                '~/Library/Preferences/com.panic.Coda2.plist',
                '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist',
                '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist.lockfile',
                '~/Library/Saved Application State/com.panic.Coda2.savedState',
              ]
end
