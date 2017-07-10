cask 'aseprite' do
  version '1.2-beta12'
  sha256 'f142d30ea43cd4ac0c176e400b109627a772df48b54a3b4aa884567c93063ff0'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '69daacf9be253265a763583cb67dc3c9e92078d6c056c1c736ec2d457444b594'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
