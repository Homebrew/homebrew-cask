cask 'lrtimelapse' do
  version '5.3.1'
  sha256 'ec65f7296081b308b7298d63b5f81967a73217f191eced57f58b61e23f78a607'

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
