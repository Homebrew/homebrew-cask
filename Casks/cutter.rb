cask 'cutter' do
  version '1.2'
  sha256 '9d5cc522e2d571746c9df89bce5528a81b85e31ccaee3d8e79933ea1eb944892'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/cutter-v#{version}.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: 'efac4ee3bcb6ecddaf748d3a86012553de50c366a09bfb54c6c137dc445651d5'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'cutter.app'

  zap trash: [
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
