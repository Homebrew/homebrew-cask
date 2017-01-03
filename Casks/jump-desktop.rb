cask 'jump-desktop' do
  version '7.0.1'
  sha256 'f0b219b1a72f1fe32c5a626e31ecaab8e3992e374e0dd4fc4850b90e83d46777'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '019a3afa02f41897e8d549163b02073a4b188c31231b9bb3b15f38922610b955'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
