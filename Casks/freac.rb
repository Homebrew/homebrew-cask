cask 'freac' do
  version '1.0.33'
  sha256 '2a1cdebda090009b3f2a2209012fe1914bde1b8ae34ba077fab8d5e56e1110c8'

  # github.com/enzo1982/freac was verified as official when first introduced to the cask
  url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}.zip"
  appcast 'https://github.com/enzo1982/freac/releases.atom'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*',
               '~/Library/Preferences/org.freac.freac.plist',
               '~/Library/Saved Application State/org.freac.freac.savedState',
             ]
end
