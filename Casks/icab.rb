cask 'icab' do
  version '3.9'
  sha256 '3e97ba6453408a3dd675e373e604960442c328594553179df7e359d1effd96b7'

  # icab.clauss-net.de was verified as official when first introduced to the cask
  url "https://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php'
  name 'iCab'
  homepage 'http://www.icab.de/'

  app "iCab #{version} (64+32 Bit Intel Version for macOS 10.7-10.14)/iCab.app"
end
