cask 'foxitreader' do
  version '3.1.0'
  sha256 'a1e43bf30ae35a76c296a3121d286cc2cbb61826f2c6ed038e7d34739d86f90c'

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/en_us/FoxitReader#{version.no_dots}.enu.setup.pkg"
  name 'Foxit Reader'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  pkg "FoxitReader#{version.no_dots}.enu.setup.pkg"

  uninstall pkgutil: 'com.foxitsoftware.reader.pkg'
end
