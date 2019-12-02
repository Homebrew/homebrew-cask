cask 'deckset' do
  version '2.0.13,2551'
  sha256 '5fefd4d5a5209be5be7fbf61ec099c86347a9ed7133b4dcd8ef71b3303414d09'

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
