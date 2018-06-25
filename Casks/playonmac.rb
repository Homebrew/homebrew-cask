cask 'playonmac' do
  version '4.2.12'
  sha256 '1e2b51cd1bbbde7a7837af3bb4b3cc113034adc4f7ba41e8bb85dd0b8f0f7f2a'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
