cask 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'http://download.garmin.com/omt/express/B/GarminExpressInstaller.dmg'
  name 'Garmin Express'
  homepage 'https://connect.garmin.com/en-US/'

  pkg 'Install Garmin Express.pkg'

  uninstall delete: '/Applications/Garmin Express.app'
end
