cask :v1 => 'playonmac' do
  version '4.2.7'
  sha256 '06d3bd8220424913bd893612c2584a1eee1367b56780c9223fee40b418001590'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name 'PlayOnMac'
  homepage 'http://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
