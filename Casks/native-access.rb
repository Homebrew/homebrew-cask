cask 'native-access' do
  version :latest
  sha256 :no_check

  url 'http://assets-cdn.native-instruments.com/public_downloads/Native_Access_Installer.dmg'
  name 'Native Access'
  homepage 'https://www.native-instruments.com/en/specials/native-access/'

  app 'Native Access.app'
end
