cask 'gear-player' do
  version '2.2.34'
  sha256 'a421c89b774812bc537599b90efd9671c5318857d701bf644ac200ef632558ba'

  url 'https://dl.gearmusicplayer.com/gearupdate.zip'
  appcast 'https://dl.gearmusicplayer.com/gearcast.xml',
          checkpoint: 'f54dfa055dba9b178f46eed23c2fe1fbbc25f96a56b9006f0404d2bb6877cb74'
  name 'Gear Player'
  homepage 'https://www.gearmusicplayer.com/'

  auto_updates true

  app 'Gear Player.app'
end
