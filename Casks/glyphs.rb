cask 'glyphs' do
  version '2.4.1-983'
  sha256 '8f2beb8d5322ed602d7debc8b918aaed14e5fb8b5a2c791525dc06ba1de6d78f'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'e90536931075a32aed280b693ac4fb89a9361be1c19530d9657890af2c9f2050'
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
