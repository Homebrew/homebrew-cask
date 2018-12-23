cask 'lrtimelapse' do
  version '5.1.1'
  sha256 '20bb3350b8c30f0665972d582aeb6e8dca8b2cde3aac0fe1e9404c6be21b9e25'

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
