cask 'lima' do
  version '1.2.0'
  sha256 '648f02b70560b84b161dd8cc2a2813d595e2b092dca23185dc273d7d1ca359ad'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'
  license :gratis

  app 'Lima.app'
end
