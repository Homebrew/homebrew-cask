cask 'insync' do
  version '3.1.4.40797'
  sha256 '5bec44e33af02dd122f210d128add49a754545599039a81348ae4c9e99a99e46'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
