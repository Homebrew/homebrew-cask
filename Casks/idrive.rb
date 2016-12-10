cask 'idrive' do
  version :latest
  sha256 :no_check

  url 'http://www.idrive.com/downloads/IDrive.dmg'
  name 'iDrive'
  homepage 'http://www.idrive.com'

  pkg 'IDrive.pkg'

  uninstall pkgutil: 'com.profsoftnet.idrive.*'
end
