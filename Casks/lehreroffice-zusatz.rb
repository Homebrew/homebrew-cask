cask 'lehreroffice-zusatz' do
  version '2018.4.0'
  sha256 'b7c717ed20de5ea1ed5e4bd16f7534c69fb29dd8158715327f91e6cf7d07ab61'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '259a12f7fe89e686b1edcad440f4b88ce677539693f89ec20f31c60a87b76ed8'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
