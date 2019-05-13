cask 'glip' do
  version '19.04.8'
  sha256 '0a273227365557f11ac0a80604e0751f0c510cfe83cccf9733cb28ade61adf35'

  # downloads.ringcentral.com/glip/rc was verified as official when first introduced to the cask
  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/RingCentral-#{version}.dmg"
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
