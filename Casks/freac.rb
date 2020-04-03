cask 'freac' do
  version '1.1'
  sha256 'f11c944751882ea84b9075df23a03c05c1694479307165a49c39dc474eb267cf'

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
