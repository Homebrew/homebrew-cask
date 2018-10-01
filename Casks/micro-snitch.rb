cask 'micro-snitch' do
  version '1.3'
  sha256 'c15e607522c4cffa3839c63504fed19519811b469830d2f1e58b2520a8eb0f34'

  url "https://www.obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.zip"
  name 'Micro Snitch'
  homepage 'https://www.obdev.at/products/microsnitch/index.html'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Micro Snitch.app'

  uninstall quit:      'at.obdev.MicroSnitch',
            launchctl: 'at.obdev.MicroSnitchOpenAtLoginHelper'

  zap trash: [
               '~/Library/Application Support/at.obdev.MicroSnitchOpenAtLoginHelper',
               '~/Library/Application Support/Micro Snitch',
               '~/Library/Caches/at.obdev.MicroSnitch',
               '~/Library/Containers/at.obdev.MicroSnitchOpenAtLoginHelper',
               '~/Library/Logs/Micro Snitch.log',
               '~/Library/Preferences/at.obdev.MicroSnitch.plist',
             ]
end
