cask 'jump-desktop' do
  version '6.0.3'
  sha256 'b4776b0bf2dc2932e899690dc041a6e8ee7337f50ff39783f3c40964c6c1e010'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: 'c1ec2782d66c15a6128dc3506d0f2d52d3959ac7a7f4632e295649e76ad6b2ab'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
