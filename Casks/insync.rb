cask 'insync' do
  version '3.0.25.40643'
  sha256 'cdf8d3af022e103620fb6e19565bd2c63b3f306031b008fe62230e908ea6d4ce'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
