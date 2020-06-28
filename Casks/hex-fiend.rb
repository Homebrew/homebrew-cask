cask 'hex-fiend' do
  version '2.13.0'
  sha256 'f4f1481d7447a16bc70b62380069bd8650d26413789967331183ca4dd4a0f562'

  # github.com/ridiculousfish/HexFiend/ was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom'
  name 'Hex Fiend'
  homepage 'https://ridiculousfish.com/hexfiend/'

  auto_updates true
  conflicts_with cask: 'hex-fiend-beta'

  app 'Hex Fiend.app'
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ridiculousfish.hexfiend.sfl2',
               '~/Library/Application Support/com.ridiculousfish.HexFiend',
               '~/Library/Caches/com.ridiculousfish.HexFiend',
               '~/Library/Cookies/com.ridiculousfish.HexFiend.binarycookies',
               '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
               '~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState',
             ]
end
