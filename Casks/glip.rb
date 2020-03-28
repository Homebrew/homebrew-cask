cask 'glip' do
  version '20.2.2'
  sha256 'ebc1be2a8658cf95c90673f4327176a65ffd47346336928da9da45400a598b5f'

  # downloads.ringcentral.com/glip/rc was verified as official when first introduced to the cask
  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/RingCentral-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/glip/rc/GlipForMac'
  name 'Glip'
  homepage 'https://glip.com/'

  app 'Glip.app'

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
