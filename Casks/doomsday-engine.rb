cask 'doomsday-engine' do
  version '2.0.3'
  sha256 '8dd5fb6a780f5d53918b5bb96af95cc69041387c34f070a00196604f52539018'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss',
          checkpoint: 'db1e7243b5c785310d09237ecd00547f5fc99878db982ad1f341f8e4b1266be7'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
