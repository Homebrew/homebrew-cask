cask 'glyphs' do
  version '2.6.1,1197'
  sha256 '8ddfadadcc6fa195202abd3030be0d585406861a0f1756732f07fd148a6331f6'

  url "https://updates.glyphsapp.com/Glyphs#{version.major_minor_patch}-#{version.after_comma}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml"
  name 'Glyphs'
  homepage 'https://glyphsapp.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Glyphs.app'

  zap trash: [
               '~/Library/Application Support/Glyphs',
               '~/Library/Application Support/com.GeorgSeifert.Glyphs2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.georgseifert.glyphs2.sfl*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.GeorgSeifert.Glyphs2.help*',
               '~/Library/Preferences/com.GeorgSeifert.Glyphs2.plist',
             ]
end
