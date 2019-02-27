cask 'lrtimelapse' do
  version '5.2'
  sha256 'd8649dec791beb9918f28d98ad85cc23eb3006890ecc97954168b83939ed4d8a'

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
