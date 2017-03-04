cask 'jump-desktop' do
  version '7.0.5'
  sha256 '508aea748e49340601adc611c95519cecf7b75a8394417b1a77dc1827869cb08'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: 'da6b184e7f98950d91a89edb94bb35f16717bec67aab21d0fd14c12afee585e3'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
