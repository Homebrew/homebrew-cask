cask 'foxitreader' do
  version '2.4.1.0609'
  sha256 'a92e4c2af2f22381651f255603816704a265e961b485b7f4b95c50c7b8e66151'

  url 'https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/2.x/2.4/en_us/FoxitReader.2.4.1.0609.enu.setup.pkg'
  name 'FoxitReader.2.4.1.0609.enu.setup.pkg'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  app 'Foxit Reader.app'
  pkg '/Users/jledbetter460/Downloads/FoxitReader.2.4.1.0609.enu.setup.pkg'

  uninstall pkgutil: 'com.foxitsoftware.reader.pkg'
end
