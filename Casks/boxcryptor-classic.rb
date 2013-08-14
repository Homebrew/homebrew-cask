class BoxcryptorClassic < Cask
  url 'https://www.boxcryptor.com/download/Boxcryptor_Installer.dmg'
  homepage 'https://www.boxcryptor.com/en/boxcryptor-classic'
  version 'latest'
  no_checksum
  install 'Install Boxcryptor Classic.pkg'
  uninstall :script => 'Uninstall.command', :args => %w[--unattended]
end
