cask 'doomsday-engine' do
  version '2.0.1'
  sha256 'c4dfbfdc452bb6d1552a3ab9c5da0ab74352ed044d783ed0e7729668a2a12f83'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss',
          checkpoint: '1a1b7e03bfd9ccc0745ce5cf418a9f19474944200ca6c8bd0240205f56208ac7'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
