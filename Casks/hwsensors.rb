cask 'hwsensors' do
  version '6.25.1426,45'
  sha256 '3054903d8e4cc26b5e60e5409ee969282a0766dc8ca061bcde6c6d4934380148'

  url "http://www.hwsensors.com/content/01-releases/#{version.after_comma}-release-#{version.patch}/HWSensors.#{version.before_comma}.pkg"
  appcast 'http://hwsensors.com/appcast/appcast.xml',
          checkpoint: '286d37069a5634bc60d8f716bad0bc1359a452dc060b58303c76fb1cd30eb1a6'
  name 'HWSensors'
  homepage 'http://www.hwsensors.com/'

  auto_updates true

  pkg "HWSensors.#{version.before_comma}.pkg"

  uninstall login_item: 'HWMonitor',
            pkgutil:    'org.hwsensors.HWMonitor',
            quit:       'org.hwsensors.HWMonitor'

  zap delete: [
                '~/Library/Application Support/HWMonitor',
                '~/Library/Preferences/org.hwsensors.HWMonitor.plist',
              ]
end
