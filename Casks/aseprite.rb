cask 'aseprite' do
  version '1.1.13'
  sha256 '90939bc06f5694a512d233018ae12ce7ce3bed409e7164d4160dbfe16afc4609'

  url "https://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '69daacf9be253265a763583cb67dc3c9e92078d6c056c1c736ec2d457444b594'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
