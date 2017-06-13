cask 'icab' do
  version '5.8.3'
  sha256 'b4e3a6a0c166cd5b12a5903939415ec81fa5521ba895e224e93a3d035b53cf8c'

  # icab.clauss-net.de was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php',
          checkpoint: '68a5c642eeac77a7f7b4bc3c6e83783eb9090e3ded072e68d1fe353d522230a9'
  name 'iCab'
  homepage 'http://www.icab.de/'

  app "iCab #{version} (64+32 Bit Intel Version for MacOSX 10.7-10.11)/iCab.app"
end
