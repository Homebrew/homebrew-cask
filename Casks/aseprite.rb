cask 'aseprite' do
  version '1.2.9'
  sha256 '45b7d238958215f9b4eed3edd89b40cd5032ab008b55584bda5bc5782c969b51'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
