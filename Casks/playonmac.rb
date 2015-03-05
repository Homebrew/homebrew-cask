cask :v1 => 'playonmac' do
  version '4.2.6'
  sha256 '171b4470c48a151e2af468bfb11e86c312603d5eb43f15b7b91020e6806ffed1'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  homepage 'http://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
