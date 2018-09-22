cask 'lrtimelapse' do
  version '5.0.8'
  sha256 'fcb97bb4817dec040ab72527e0bdeb02c375c363f8525dee0ff8134d5a54c28a'

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
