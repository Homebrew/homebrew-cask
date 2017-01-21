cask 'riot' do
  version '0.9.6'
  sha256 '3433d33ac5e819a6642e79b3251b1d76f21aeb6b32fd42a831322ab50f12d8a1'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '445549c3664843b6e8eddc8bb69df2ce4bc059808c061da1ac19e56a667f3957'
  name 'Riot'
  homepage 'https://riot.im/'

  app 'Riot.app'
end
