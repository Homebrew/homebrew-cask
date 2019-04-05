cask 'lrtimelapse' do
  version '5.2'
  sha256 '92eb1db452d7c0e662be46a8ccf13a9a39dff03f3b0a8e4d4d9c5f3e1364b77f'

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
