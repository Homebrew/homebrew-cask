cask 'near-lock' do
  version '3.4.0'
  sha256 'df699f4244f86e827da2e24d547a8413061e8ad8b3451fb759acaef3f7e1886e'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: '4a70ed81b4ef1f93921752ef010374ad0beae717b08c52651c00ed4503a70b47'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
