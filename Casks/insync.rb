cask 'insync' do
  version '1.4.3.37063'
  sha256 '14fcfd792e0d4ef3070101652b771dceac777a79e73c582345ca79ee0d861e4f'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
