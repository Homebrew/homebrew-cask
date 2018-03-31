cask 'aseprite' do
  version '1.2.7'
  sha256 'c66f321e8546ad6bb488be06533abf55a9e9e9004da6435472d0d8d3f96432a2'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '5070fd52a2a980fa386dc2d4b53e03a98c9b5638c58bf6411a5e22b0cc9551c1'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
