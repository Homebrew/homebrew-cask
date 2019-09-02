cask 'freac' do
  version '1.1-alpha-20190423'
  sha256 'ce10882ca82198ec84397ab3a2d1fb3292dd9272ab59db2e22226cf09cab2739'

  # github.com/enzo1982/freac was verified as official when first introduced to the cask
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
