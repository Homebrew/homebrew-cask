cask 'chocolat' do
  version '3.2.1'
  sha256 'c924cc5eccaa9d6cfe97108cfb1ba31c0433d82485268a75313c5a8dcab53657'

  # fileability.net was verified as official when first introduced to the cask
  url "http://files.fileability.net/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: '524ab33cc350ad000a05f6529eea17caef80343088d2f22dfeb86af430482283'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'
  license :commercial

  app 'Chocolat.app'
end
