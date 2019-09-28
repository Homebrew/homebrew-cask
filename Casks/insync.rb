cask 'insync' do
  version '3.0.20.40428'
  sha256 '9cc48ccb27a9efce8199845bf0e7625d87efda5948b1c8ca02f5dbeab920255b'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
