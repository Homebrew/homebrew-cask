cask 'lehreroffice' do
  version :latest
  sha256 :no_check

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
