class BoxcryptorClassic < Cask
  url 'https://www.boxcryptor.com/download/Boxcryptor_Installer.dmg'
  homepage 'https://www.boxcryptor.com/en/boxcryptor-classic'
  version '1.3.4'
  sha1 '36495597f367a73e73d162567a5307fbd78c52ef'
  install 'Install Boxcryptor Classic.pkg'
  uninstall :script => 'Uninstall.command', :args => %w[--unattended]
end
