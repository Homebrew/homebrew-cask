cask 'filemaker-odbc' do
  version '14.0.10'
  sha256 '27aeca66ea4e82ac0dbdd538f42037611fefa4b7c6e461d3dba35cb10de20c18'

  url "https://fmdl.filemaker.com/UPDT/#{version.major}/FM#{version.major_minor}v1_xDBC_#{version}.dmg"
  appcast 'https://www.filemaker.com/support/updaters/updater_json.txt'
  name 'FileMaker ODBC Client Drivers'
  homepage 'https://www.filemaker.com/'

  pkg 'ODBC Client Driver Installer/FileMaker ODBC.pkg'

  uninstall pkgutil: 'com.filemaker.odbcdriver.*'
end
