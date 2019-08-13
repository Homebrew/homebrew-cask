cask 'insync' do
  version '3.0.13.40201'
  sha256 '9cab56c0ca92a424ab55f89519afcfc8dcf07912187e42458a655e8dac86d69f'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
