cask 'insync' do
  version '3.0.19.40421'
  sha256 'f95b2112b708c0e0f68560a4c1a431fd20d2a65555f5a4d7ce033bbfdb88c8c5'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
