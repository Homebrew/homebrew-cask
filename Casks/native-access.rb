cask 'native-access' do
  version :latest
  sha256 :no_check

  url 'https://www.native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg'
  name 'Native Access'
  homepage 'https://www.native-instruments.com/en/specials/native-access/'

  app 'Native Access.app', target: '/Applications/Native Instruments/Native Access.app'
end
