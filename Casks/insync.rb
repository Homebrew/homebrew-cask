cask 'insync' do
  version '3.0.28.40721'
  sha256 '11bbdf6de20438d7935d4de987838d160d4a2f3e59c6c5f33e25a01547011373'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
