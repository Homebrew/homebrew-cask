cask 'cutter' do
  version '1.10.2'
  sha256 'c999722f7ba4442c3cd9aa619baec2389459526a243c0af48697e18de5893eba'

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
