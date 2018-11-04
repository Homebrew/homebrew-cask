cask 'swift' do
  version '4.0'
  sha256 '74840f20c470483ea752e8d1d97e74c8c705a435c43075e1f3e888a93692e35e'

  url "https://swift.im/downloads/releases/swift-#{version}/Swift-#{version}.dmg"
  name 'Swift XMPP Client'
  homepage 'https://swift.im/'

  app 'Swift.app'

  zap trash: [
               '~/Library/Application Support/Swift',
               '~/Library/Caches/im.swift.Swift',
               '~/Library/Preferences/im.swift.Swift.plist',
               '~/Library/Saved Application State/im.swift.Swift.savedState',
             ]
end
