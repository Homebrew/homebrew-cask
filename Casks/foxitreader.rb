cask 'foxitreader' do
  version '2.4.4.0903'
  sha256 '18d32ad8a01879aedc54c190df13cdb48a2932aa565fea12e242d087800c3e5f'

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/en_us/FoxitReader.#{version}.enu.setup.pkg"
  name 'Foxit Reader'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  pkg "FoxitReader.#{version}.enu.setup.pkg"

  uninstall pkgutil: 'com.foxitsoftware.reader.pkg'
end
