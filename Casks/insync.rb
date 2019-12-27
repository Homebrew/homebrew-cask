cask 'insync' do
  version '3.0.27.40677'
  sha256 '0a0b4d8b701330cd51d5f813e5447b09c1fb247b9a1355bcc3aeb34a5ec178b9'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
