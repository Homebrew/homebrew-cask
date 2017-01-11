cask 'icab' do
  version '5.7'
  sha256 'a0143d3b864daad62a525e3b14f300bf10cc09126d8f317bb2d532d997c470c9'

  # icab.clauss-net.de was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php',
          checkpoint: 'a2272b5ef213ca7cc65604012025e2bcd87c498cf1e251bf26c272e9525170ed'
  name 'iCab'
  homepage 'http://www.icab.de/'

  app "iCab #{version} (64+32 Bit Intel Version for MacOSX 10.7-10.11)/iCab.app"
end
