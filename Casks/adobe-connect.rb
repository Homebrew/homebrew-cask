cask 'adobe-connect' do
  version :latest
  sha256 :no_check # required as upstream package is updated in-place

  url 'http://download.adobe.com/pub/connect/updaters/meeting/9_7/AdobeConnect_982.437.dmg'
  name 'Adobe Connect'
  homepage 'http://www.adobe.com/products/adobeconnect.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: 'AdobeConnectInstaller.app/Contents/MacOS/AdobeConnectInstaller',
                      args:       ['-silent'],
                      sudo:       true,
                    }

  uninstall pkgutil: 'com.adobe.connect.*',
            delete:  '/Applications/Adobe Connect/'
end
