cask 'heroes-of-newerth' do
  version '3.7.5.2'
  sha256 '90f3c91e77e73bc5a6eebf2cb41bc7ad43dea5d750fa49f6ac499125e2a0d940'

  url "http://dl.heroesofnewerth.com/HoNClient-#{version}.dmg"
  name 'Heroes of Newerth'
  homepage 'https://www.heroesofnewerth.com/'
  license :gratis

  app 'Heroes of Newerth.app'

  zap delete: '~/Library/Application Support/Heroes of Newerth'
end
