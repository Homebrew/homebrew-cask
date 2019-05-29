cask 'foxitreader' do
  version '3.2.0'
  sha256 '76b3e7a6d9a0dfce3db93469c4c8ef3e0053d8a5e5170f50676cc5981143cb2e'

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitReader#{version.no_dots}.setup.pkg"
  name 'Foxit Reader'
  homepage 'https://www.foxitsoftware.com/pdf-reader/'

  pkg "FoxitReader#{version.no_dots}.setup.pkg"

  uninstall pkgutil: 'com.foxitsoftware.reader.pkg',
            delete:  '/Applications/Foxit Reader.app'
end
