cask 'glyphs' do
  version '2.4.2-1029'
  sha256 'dce89ce890ff3a0dd8fe3eb3322e4d979db44a4f8689658f8e9b6e0a7ea0b893'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'ff5df21d32fab1fb5171cca67d4c3ba0a2b18cd5d3c63806cb49047089f25cbf'
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
