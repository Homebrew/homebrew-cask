cask 'playonmac' do
  version '4.2.10'
  sha256 '6d95f5e4b6b89b6f38d873738759a708304f528c8696c080043328457d9b3f24'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom",
          checkpoint: 'b939d1657277128da61461be04c876c32a8f88e48fa46ed0f002230ede1c190e'
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
