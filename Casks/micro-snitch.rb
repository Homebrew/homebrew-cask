cask 'micro-snitch' do
  version '1.2'
  sha256 '7749a1bbc88a7a4bcb246d9f6d8b4d46b4faabfb95f7a8706be28570dcc09115'

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
