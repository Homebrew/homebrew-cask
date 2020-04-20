cask 'freac' do
  version '1.1.1'
  sha256 'ec753aa0f7c6e5407533cfff657cec637bd117f2d2d938228174e3eda75c430c'

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
