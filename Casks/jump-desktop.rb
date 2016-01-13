cask 'jump-desktop' do
  version '6.0.3'
  sha256 'b4776b0bf2dc2932e899690dc041a6e8ee7337f50ff39783f3c40964c6c1e010'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://service.jumpdesktop.com/update/jdmac-web/appcast.xml',
          :sha256 => '43ba2aeefaf1562ba962137dda9ea17f2166faf90b8de006c47e4f5a7e4f0808'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'
  license :commercial

  app 'Jump Desktop.app'
end
