cask 'glip' do
  version '3.0.1727'
  sha256 'eca4a1dd80f66f0cfa6ed1a1936b2b528426cf745a1472e0459d8c9cceb8637d'

  # downloads.ringcentral.com/glip/rc was verified as official when first introduced to the cask
  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/Glip-#{version}.dmg"
  name 'Glip'
  homepage 'https://glip.com/'

  app 'Glip.app'

  uninstall signal: [
                      ['TERM', 'com.Glip.Glip.helper'],
                      ['TERM', 'com.Glip.Glip'],
                    ]

  zap delete: [
                '~/Library/Caches/com.Glip.Glip',
                '~/Library/Caches/com.Glip.Glip.ShipIt',
                '~/Library/Saved Application State/com.Glip.Glip.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Glip',
                '~/Library/Preferences/com.Glip.Glip.helper.plist',
                '~/Library/Preferences/com.Glip.Glip.plist',
              ]
end
