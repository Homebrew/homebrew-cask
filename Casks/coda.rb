cask 'coda' do
  version '2.5.18'
  sha256 'e46f53c246f41b5ce159c0a89da08a587c1acfce01a105bbddb5948604606850'

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
