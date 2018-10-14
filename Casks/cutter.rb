cask 'cutter' do
  version '1.7.2'
  sha256 '875e06b266427c4e5251e247307f17370bc42cca0933aabdccb9d79b7a73995b'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}-x64.macOS.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'Cutter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test.cutter.sfl*',
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
