cask 'eudic' do
  version '2020-04-27,3.9.6'
  sha256 '5cec29af3ff50a6658c81c33466166aa0de18097ec649ec82557517cf2f73d2e'

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.before_comma}",
      user_agent: :fake
  appcast 'https://www.eudic.net/v4/en/app/download'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/v4/en/app/eudic'

  app 'Eudic.app'
end
