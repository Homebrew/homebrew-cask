class BoxcryptorClassic < Cask
  url 'https://www.boxcryptor.com/download/Boxcryptor_Installer.dmg'
  homepage 'https://www.boxcryptor.com/en/boxcryptor-classic'
  version 'latest'
  sha256 :no_check
  install 'Install Boxcryptor Classic.pkg'
  uninstall :script => { :executable => 'Uninstall.command', :args => %w[--unattended] }
end
