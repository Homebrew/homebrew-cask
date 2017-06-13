cask 'idrive' do
  version :latest
  sha256 :no_check

  url 'https://www.idrive.com/downloads/IDrive.dmg'
  name 'iDrive'
  homepage 'https://www.idrive.com/'

  pkg 'IDrive.pkg'

  uninstall pkgutil: 'com.profsoftnet.idrive.*'
end
