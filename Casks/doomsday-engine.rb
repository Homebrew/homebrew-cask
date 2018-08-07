cask 'doomsday-engine' do
  version '2.1.0-build2774'
  sha256 '37b4b4ab75dcf3122ebcfd7b4d04122c3a04af0af27f21354b766d1ae808c2f0'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
