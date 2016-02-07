cask 'lego-digital-designer' do
  version '4.3.8'
  sha256 'aeba6d0a2d0feb2bf6ce2c6be257a87caf6d51a4038e046d45568c8df7e3c6ca'

  url "http://cache.lego.com/downloads/ldd2.0/installer/setupLDD-MAC-#{version.gsub('.', '_')}.zip"
  name 'Lego Digital Designer'
  homepage 'http://ldd.lego.com/'
  license :commercial

  pkg 'LDD.pkg'

  uninstall pkgutil: ['com.lego.LDD.pkg',
                      'com.lego.legoDigitalDesigner.postflight.pkg',
                      'com.lego.legoDigitalDesigner.preflight.pkg']
end
