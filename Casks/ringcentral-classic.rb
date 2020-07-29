cask 'ringcentral-classic' do
  version '20.2.30'
  sha256 '4f5789eda68ba05a6a76ab03246352c52039dce27db9d9bf2c68c214feb830e2'

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
