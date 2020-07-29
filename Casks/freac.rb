cask 'freac' do
  version '1.1.2'
  sha256 'cd0e8d9c0763780beba59dc991aa1e7eaff6079d16c720cc94f0c6ab0cd8d62d'

  # github.com/enzo1982/freac/ was verified as official when first introduced to the cask
  url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}-macosx.dmg"
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
