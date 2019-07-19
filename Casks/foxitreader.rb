cask 'foxitreader' do
  version '3.3.0'
  sha256 'd8cfa1598a0526b111a4e82b20fc1583a4776b87b4b63e30c10ab879e21c1aa2'

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitReader#{version.no_dots}.setup.pkg"
  appcast 'https://www.foxitsoftware.com/downloads/downloadForm.php?retJson=1&product=Foxit-Reader&platform=Mac-OS-X'
  name 'Foxit Reader'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  pkg "FoxitReader#{version.no_dots}.setup.pkg"

  uninstall pkgutil: [
                       'com.foxitsoftware.reader.pkg',
                       'com.foxit.pkg.reader',
                     ],
            delete:  '/Applications/Foxit Reader.app'
end
