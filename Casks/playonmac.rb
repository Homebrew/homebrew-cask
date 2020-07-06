cask 'playonmac' do
  version '4.4'
  sha256 'b3077c7d5da7794802db47a755a13ce91e33a0594e3abad907ed812c85493413'

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
