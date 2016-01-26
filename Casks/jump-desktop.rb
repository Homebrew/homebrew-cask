cask 'jump-desktop' do
  version '6.0.3'
  sha256 'b4776b0bf2dc2932e899690dc041a6e8ee7337f50ff39783f3c40964c6c1e010'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://service.jumpdesktop.com/update/jdmac-web/appcast.xml',
          checkpoint: '4ff82f62c8503ac4342a7193ee1198936aa2ed4e3446727eec889a4e40a3c446'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'
  license :commercial

  app 'Jump Desktop.app'
end
