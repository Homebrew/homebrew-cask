cask 'insync' do
  version '3.0.15.40277'
  sha256 'da005ae2e78b1956c886e3e74143bde89ee539fbabb93e5927ba8d1aede2e871'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
