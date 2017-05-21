cask 'lrtimelapse' do
  version '4.7.6'
  sha256 '6555e671a6276132ceecc6ef8ba63c41ea62c1acc010549f9ae77b4a9fbe60f0'

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.dots_to_hyphens}-mac/"
  name 'LRTimelapse'
  homepage 'https://lrtimelapse.com/'

  pkg "LRTimelapse #{version} Installer.pkg"

  uninstall script:  'Uninstall LRTimelapse.command',
            pkgutil: [
                       'com.lrtimelapse.LRAddons',
                       'com.lrtimelapse.LRTimelapse4',
                       'com.lrttimelapse.LRTTools',
                     ]
end
