cask 'foxitreader' do
  version '3.0.1'
  sha256 '01697a12a46a30135eaba3dcaa8b487005d35dda7eeb67634efdb8427a82953c'

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/en_us/FoxitReader#{version.no_dots}.enu.setup.pkg"
  name 'Foxit Reader'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  pkg "FoxitReader#{version.no_dots}.enu.setup.pkg"

  uninstall pkgutil: 'com.foxitsoftware.reader.pkg'
end
