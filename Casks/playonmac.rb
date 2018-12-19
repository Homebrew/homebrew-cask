cask 'playonmac' do
  version '4.3.3'
  sha256 '795099f03efde730daf9e30c8c55575851f89484d9d38dee7d010987fce1ed85'

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom"
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
