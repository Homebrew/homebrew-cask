class Boxcryptor < Cask
  url 'https://www.boxcryptor.com/download/BoxCryptor_Installer.dmg'
  homepage 'https://www.boxcryptor.com/'
  version 'latest'
  no_checksum
  install 'Install BoxCryptor.pkg'
end
