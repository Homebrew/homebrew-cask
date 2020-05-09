cask 'ringcentral-classic' do
  version '20.2.20'
  sha256 'f7da52b2c132240a93e3fbff0bd92a0276288703ea2e2a7b9d54474be3f489cc'

  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/RingCentral%20Classic-#{version}.dmg"
  name 'RingCentral Classic'
  homepage 'https://www.ringcentral.com/apps/rc-classic'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Glip.app', target: 'RingCentral Classic.app'

  uninstall signal: [
                      ['TERM', 'com.Glip.Glip.helper'],
                      ['TERM', 'com.Glip.Glip'],
                    ]

  zap trash: [
               '~/Library/Application Support/Glip',
               '~/Library/Caches/com.Glip.Glip',
               '~/Library/Caches/com.Glip.Glip.ShipIt',
               '~/Library/Preferences/com.Glip.Glip.helper.plist',
               '~/Library/Preferences/com.Glip.Glip.plist',
               '~/Library/Saved Application State/com.Glip.Glip.savedState',
             ]
end
