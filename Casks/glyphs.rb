cask 'glyphs' do
  version '2.4.2-1026'
  sha256 '3a01bd9c852f176b2a35be6642d5515395b670a2dc6311da5abb1b31f813a1a8'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '27a593d068a6bb6e5ee0e737b0a0bf97b34bd1948c9359f580857315be65f1c7'
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
