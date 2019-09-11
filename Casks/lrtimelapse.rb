cask 'lrtimelapse' do
  version '5.3.0'
  sha256 '34feb419262a11ffa94e5051e430c31e148e1194325c72ae089b29f943a622f6'

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
