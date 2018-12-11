cask 'aseprite' do
  version '1.2.10'
  sha256 'e5e043faa8b20054c4b416559be18a7c66599a2a4d7512dcf3d5eb1ecb0130be'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
