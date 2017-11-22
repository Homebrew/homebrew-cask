cask 'adobe-connect' do
  version :latest
  sha256 'd310bda05cac63fca5c90e7b3dae9b09accd7460e88e76482efed2bc763e6cfc'

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
