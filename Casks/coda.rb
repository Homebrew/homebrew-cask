cask 'coda' do
  version '2.5.17'
  sha256 '2f22c7e1fe2a78beb65557a302c8d4de63106c95f5b0ac7ab4ff0d08e2e1e6d3'

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
