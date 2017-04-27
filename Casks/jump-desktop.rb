cask 'jump-desktop' do
  version '7.0.6'
  sha256 '0031eb1377ecc37e9808dfd2c89431077cc8f0dd392e233c6218e0054ab2ad14'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '6b1d494254020493209c3e24c88255de02c1003286874a8ad7be787a2576d9bc'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
