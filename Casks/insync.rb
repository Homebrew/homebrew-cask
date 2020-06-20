cask 'insync' do
  version '3.2.0.40833'
  sha256 '5a797d90eaa43e8e5a107419e9cce3f50285f64926bb4fb1efbec70907752ffe'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
