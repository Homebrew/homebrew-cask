cask 'foxitreader' do
  version '3.4.0'
  sha256 '9b845d9aa1e580874c28587e2c707afbcbabe126b463b220490d2295df569726'

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
