cask 'playonmac' do
  version '4.3.4'
  sha256 '75114662921a1bbe0c60f624713100e110ffffcca0ed1cf95f8d7f59c49735b2'

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
