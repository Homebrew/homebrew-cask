cask 'glyphs' do
  version '2.5.1-1141'
  sha256 'f360ce97d12425f6e0686be2db46c8ccd78bae99256f0d381f22477692067d70'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '83be043e56e2b3ac682f7574031a2b3143d7bff7a87fa84392792276f26589e5'
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
