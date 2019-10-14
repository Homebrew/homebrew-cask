cask 'lrtimelapse' do
  version '5.3.1'
  sha256 '62fb8bd9fe38de42789b4ec0fc4fa3bae87c76e53433913488d15bfe85face0a'

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
