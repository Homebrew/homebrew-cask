cask 'lehreroffice' do
  version '2018.4.0'
  sha256 '2aa71874bc3300761360a9bb953f99e2429349718b78adfe1588b7256e5f628a'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '259a12f7fe89e686b1edcad440f4b88ce677539693f89ec20f31c60a87b76ed8'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
