cask 'lrtimelapse' do
  version '5.3.2'
  sha256 'dabbad9d6bb1c0bd6e934a10f20bea0212289bef16320a171564465bee43ab10'

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.major}-mac/"
  appcast 'https://lrtimelapse.com/download/'
  name 'LRTimelapse'
  homepage 'https://lrtimelapse.com/'

  pkg 'LRTimelapse  Installer.pkg'

  uninstall script:  'Uninstall LRTimelapse.command',
            pkgutil: [
                       'com.lrtimelapse.LRAddons',
                       "com.lrtimelapse.LRTimelapse#{version.major}",
                       'com.lrttimelapse.LRTTools',
                     ]
end
