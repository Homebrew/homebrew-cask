cask :v1 => 'playonmac' do
  version '4.2.9'
  sha256 '4c91b84ad66e2f4e5312a03f5b8052bd5bc7917e413cc85b71647f163e1641e5'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
