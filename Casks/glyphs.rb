cask 'glyphs' do
  version '2.4.1-983'
  sha256 '8f2beb8d5322ed602d7debc8b918aaed14e5fb8b5a2c791525dc06ba1de6d78f'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'bb9b963606e84a994a62a9ac66d0ea04220176f3074fb2362da886d309e727a6'
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
