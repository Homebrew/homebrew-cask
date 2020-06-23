cask 'deckset' do
  version '2.0.17,2580'
  sha256 'aae4a05b12411494682a3faec538c764fd3e8a4e5e68d1b905e1a45420fbd057'

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
