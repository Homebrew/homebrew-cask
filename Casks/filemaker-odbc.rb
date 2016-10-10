cask 'filemaker-odbc' do
  version '14.0.10'
  sha256 '68284d8556622081d90f2502b3785200090b8868f4b335b3512c5e0023102d8a'

  url "http://fmdl.filemaker.com/UPDT/#{version.major}/FM#{version.major_minor}v1_xDBC_#{version}.dmg"
  name 'FileMaker ODBC Client Drivers'
  homepage 'https://www.filemaker.com/'

  pkg 'ODBC Client Driver Installer/FileMaker ODBC.pkg'

  uninstall pkgutil: 'com.filemaker.odbcdriver.*'
end
