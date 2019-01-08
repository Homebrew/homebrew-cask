cask 'lrtimelapse' do
  version '5.1.1'
  sha256 '5cf186b7ae3a645fb1dfcefc91bad3c099e14b54b2b1d4818b67ed3cce110391'

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/"
  name 'LRTimelapse'
  homepage 'https://lrtimelapse.com/'

  pkg "LRTimelapse #{version} Installer.pkg"

  uninstall script:  'Uninstall LRTimelapse.command',
            pkgutil: [
                       'com.lrtimelapse.LRAddons',
                       "com.lrtimelapse.LRTimelapse#{version.major}",
                       'com.lrttimelapse.LRTTools',
                     ]
end
