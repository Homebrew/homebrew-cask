cask 'insync' do
  version '3.1.9.40821'
  sha256 '8f3d84ec6bb8a83c53b0457eeed04b56968ed5729a1a4c6a0a236c253e89811c'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
