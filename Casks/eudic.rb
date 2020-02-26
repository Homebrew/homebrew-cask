cask 'eudic' do
  version '3.9.6,2020-01-26'
  sha256 '5cec29af3ff50a6658c81c33466166aa0de18097ec649ec82557517cf2f73d2e'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/v4/en/app/eudic'

  app 'Eudic.app'
end
