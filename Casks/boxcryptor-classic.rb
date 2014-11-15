cask :v1 => 'boxcryptor-classic' do
  version :latest
  sha256 :no_check

  url 'https://www.boxcryptor.com/download/Boxcryptor_Installer.dmg'
  homepage 'https://www.boxcryptor.com/en/boxcryptor-classic'
  license :commercial

  app 'Boxcryptor Classic.app'
end
