cask 'insync' do
  version '3.1.3.40790'
  sha256 'a86adbb42f9a7c8d89fc6b486fb858b36b651b41bdc9f951863ac0cbc874ba38'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast 'https://www.insynchq.com/downloads?start=true'
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
