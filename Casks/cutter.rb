cask 'cutter' do
  version '1.3'
  sha256 '880a229fac750976781d1bb82cd6a6622bd5274b90428583ee75e2e1362ea0e6'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/cutter-v#{version}.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: 'fbc1b3bec7fd59304b7074bac59976ccd662aa583e142c83bb272db3892c6fbf'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'cutter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test.cutter.sfl*',
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
