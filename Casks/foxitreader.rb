cask 'foxitreader' do
  version '4.0.0'
  sha256 '56ada239bdd4ca321581dec57f55d95f916f1b9a93321c4cda8090b82979a43a'

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
