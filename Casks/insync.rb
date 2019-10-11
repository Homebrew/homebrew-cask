cask 'insync' do
  version '3.0.22.40446'
  sha256 '47c7c3b4577d2be8d2c11648495cfa6e2b9de285c283506570ba8c623d6f1e42'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
