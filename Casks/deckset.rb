cask 'deckset' do
  version '2.0.16,2578'
  sha256 '50d9234f3ccd352856457b035f037acd11e5cc996b431da6ed6e409bbc334151'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'

  zap trash: [
               '~/Library/Application Support/Deckset',
               '~/Library/Application Support/com.unsignedinteger.Deckset-Paddle',
               '~/Library/Preferences/com.unsignedinteger.Deckset-Paddle.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unsignedinteger.deckset-paddle.sfl*',
               '~/Library/Caches/com.unsignedinteger.Deckset-Paddle',
             ]
end
