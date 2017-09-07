cask 'aseprite' do
  version '1.2-beta12'
  sha256 'f142d30ea43cd4ac0c176e400b109627a772df48b54a3b4aa884567c93063ff0'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '60400a94b1700388239158950876e996e451f45bf9c362ea331e9bab193d6888'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
