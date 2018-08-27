cask 'icab' do
  version '5.8.5'
  sha256 'dded84c2d0b1bc8d734002eb6fb1eb608cebc0417499f5587a95f8df78f7c940'

  # icab.clauss-net.de was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php'
  name 'iCab'
  homepage 'http://www.icab.de/'

  depends_on macos: '>= :lion'

  app "iCab #{version} (64+32 Bit Intel Version for macOS 10.7-10.13)/iCab.app"
end
