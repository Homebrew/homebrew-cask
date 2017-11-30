cask 'lego-digital-designer' do
  version '4.3.10'
  sha256 'd48ccbf6b3eb6cf0115d07cf499c45c10c479f7f6e8ac32a3d44821325b56908'

  # lc-www-live-s.legocdn.com was verified as official when first introduced to the cask
  url "https://lc-www-live-s.legocdn.com/downloads/ldd2.0/installer/setupLDD-MAC-#{version.dots_to_underscores}.zip"
  name 'Lego Digital Designer'
  homepage 'http://ldd.lego.com/'

  pkg 'LDD.pkg'

  uninstall pkgutil: ['com.lego.LDD.pkg',
                      'com.lego.legoDigitalDesigner.postflight.pkg',
                      'com.lego.legoDigitalDesigner.preflight.pkg']
end
