cask 'cutter' do
  version '1.0'
  sha256 '5023c0d36c1f60ea28b35fd2c45867f4944f2653dfb41fbd3cd2378d6b40bf7b'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/cutter.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: '8200f38b88f86b2e798ce227b038e6a6eeb4f6a864b822fabd5dce700de0099d'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'cutter.app'

  zap trash: [
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
