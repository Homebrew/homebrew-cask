cask 'insync' do
  version '3.0.21.40435'
  sha256 '581e59fd15f55ea71beb2cce3757ec2f7892951673cea3f2390d34fa2330d013'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
