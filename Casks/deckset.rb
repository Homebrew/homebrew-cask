cask 'deckset' do
  version '2.0.14,2575'
  sha256 '5e4dec3cdfbe1bae49c842f93f73c2682d2340bb0dc65e39de8fa30ae9e04fc1'

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
