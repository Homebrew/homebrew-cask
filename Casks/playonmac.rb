cask 'playonmac' do
  version '4.2.10'
  sha256 '825bfd9ce432aebb6515ce34ff8de7916392a5c1c80f87e711114f12e8a2f259'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
