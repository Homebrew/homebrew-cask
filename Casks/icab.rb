cask 'icab' do
  version '5.8.6'
  sha256 '8ef3f51a54a129b9edf193f8f5d251888981b41bd829d3d457ef6b7930c4a125'

  # icab.clauss-net.de was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php'
  name 'iCab'
  homepage 'http://www.icab.de/'

  depends_on macos: '>= :lion'

  app "iCab #{version} (64+32 Bit Intel Version for macOS 10.7-10.14)/iCab.app"
end
