cask 'insync' do
  version '3.2.2.40848'
  sha256 '155a7ee457e54790b3cdfb4cf3e78cb4b8efe03bc0dc8a257da5d80b6290ab9e'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
