cask :v1 => 'playonmac' do
  version '4.2.8'
  sha256 '11f0c6a24486c45bbc4d0d01afa27fcaea361278289e9db8277a9fe54ffbe4f0'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
