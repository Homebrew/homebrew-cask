cask 'playonmac' do
  version '4.2.10'
  sha256 'fd75c4b348a65090dac798727c86b407c9e1363c19186f77c8ec5a9fe0e549d1'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
