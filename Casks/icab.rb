cask 'icab' do
  version '5.9.1'
  sha256 '4281500b5f38848c3e376f1acf7dca48e4d13cf61f446dcef289acfa97809e36'

  # icab.clauss-net.de was verified as official when first introduced to the cask
  url "https://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php'
  name 'iCab'
  homepage 'http://www.icab.de/'

  app "iCab #{version} (64+32 Bit Intel Version for macOS 10.7-10.14)/iCab.app"
end
