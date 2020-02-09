cask 'insync' do
  version '3.0.29.40725'
  sha256 '0ab4e7685e115855d011c806ec6a9aa6783b5e1c40b2c41bf484f44795b9885c'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
