cask 'doomsday-engine' do
  version '2.1.0-build2769'
  sha256 'bbd6706ce7c71251b80e2284c87deff1eac4b1a233408f7823b7dbe55b14dfad'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
