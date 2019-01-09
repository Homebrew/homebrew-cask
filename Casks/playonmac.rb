cask 'playonmac' do
  version '4.3.4'
  sha256 '6aba4a4d57be74dc36f0eb9782dcd84d6a2a7366a60e2b8091bd53fd28a5cf32'

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
