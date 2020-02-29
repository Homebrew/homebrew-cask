cask 'insync' do
  version '3.0.30.40732'
  sha256 '467cb819175dba033aab4dc87a5f82fe1f492b0bf8e1923ab8e96e15c4dfd0c9'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
