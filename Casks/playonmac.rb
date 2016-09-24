cask 'playonmac' do
  version '4.2.10'
  sha256 '825bfd9ce432aebb6515ce34ff8de7916392a5c1c80f87e711114f12e8a2f259'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast 'https://github.com/PlayOnLinux/POL-POM-4/releases.atom',
          checkpoint: 'b939d1657277128da61461be04c876c32a8f88e48fa46ed0f002230ede1c190e'
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'
  license :gpl

  app 'PlayOnMac.app'
end
