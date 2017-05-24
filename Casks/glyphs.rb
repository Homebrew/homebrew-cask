cask 'glyphs' do
  version '2.4.2-1017'
  sha256 '9df9a363435f04ffe5454034daa4d07de86a535ed96a255012ac4383ba9b3e13'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '9d9d8b423c7e9ccd16748029702d296b86f10f93421456c025d946045e28f437'
  name 'Glyphs'
  homepage 'https://glyphsapp.com/'

  auto_updates true

  app 'Glyphs.app'

  zap delete: [
                '~/Library/Application Support/Glyphs',
                '~/Library/Application Support/com.GeorgSeifert.Glyphs2',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.georgseifert.glyphs2.sfl',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.GeorgSeifert.Glyphs2.help',
                '~/Library/Preferences/com.GeorgSeifert.Glyphs2.plist',
              ]
end
