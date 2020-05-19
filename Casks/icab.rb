cask 'icab' do
  version '5.9.2'
  sha256 '3700c7a4078b7a867ac2037db7a0f3252056170b99f5bfd8257150c956a4f7ac'

  # icab.clauss-net.de/ was verified as official when first introduced to the cask
  url "https://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast 'http://www.icab.de/dl.php'
  name 'iCab'
  homepage 'http://www.icab.de/'

  app "iCab #{version} (64 Bit Intel for macOS 10.9-10.15)/iCab.app"
end
