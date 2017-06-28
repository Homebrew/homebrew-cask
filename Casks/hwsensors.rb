cask 'hwsensors' do
  version '6.25.1426'
  sha256 '3054903d8e4cc26b5e60e5409ee969282a0766dc8ca061bcde6c6d4934380148'

  url "http://www.hwsensors.com/content/01-releases/45-release-#{version.patch}/HWSensors.#{version}.pkg"
  name 'HWSensors'
  homepage 'http://www.hwsensors.com/'

  auto_updates true

  pkg "HWSensors.#{version}.pkg"

  uninstall pkgutil: 'org.hwsensors.HWMonitor'

  zap delete: [
                '~/Library/Application Support/HWMonitor',
                '~/Library/Preferences/org.hwsensors.HWMonitor.plist',
              ]
end
