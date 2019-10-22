cask 'playonmac' do
  version '4.3.4'
  sha256 '6aba4a4d57be74dc36f0eb9782dcd84d6a2a7366a60e2b8091bd53fd28a5cf32'

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  # PlayOnMac doesn't work on Catalina, see https://www.playonmac.com/en/topic-16558-macOS_Catalina_When_will_PlayOnMac_be_ready.html#m65029
  depends_on macos: '<= :mojave'

  app 'PlayOnMac.app'
end
