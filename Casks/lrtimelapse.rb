cask 'lrtimelapse' do
  version '5.2.2'
  sha256 '14f40d3487dfdbb99e943f381bd0b6b49016d7ee0803dcc830a3592650ffe145'

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/"
  appcast 'https://lrtimelapse.com/download/'
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
