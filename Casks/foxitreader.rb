cask 'foxitreader' do
  version '2.4.1.0609'
  sha256 'a92e4c2af2f22381651f255603816704a265e961b485b7f4b95c50c7b8e66151'

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/en_us/FoxitReader.#{version}.enu.setup.pkg"
  name 'Foxit Reader'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  pkg "FoxitReader.#{version}.enu.setup.pkg"

  uninstall pkgutil: 'com.foxitsoftware.reader.pkg'
end
