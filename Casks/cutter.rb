cask 'cutter' do
  version '1.10.3'
  sha256 'af01ca5da120afbc8666c5a029996435226ac3d72448cb48b02fd8a4853e6c80'

  # github.com/radareorg/cutter/ was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}-x64.macOS.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  depends_on macos: '>= :sierra'

  app 'Cutter.app'

  zap trash: [
               '~/.config/RadareOrg',
               '~/.local/share/radare2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.radare.cutter.sfl*',
               '~/Library/Application Support/RadareOrg/Cutter',
               '~/Library/Preferences/org.radare.cutter.plist',
               '~/Library/Saved Application State/org.radare.cutter.savedState',
             ]
end
