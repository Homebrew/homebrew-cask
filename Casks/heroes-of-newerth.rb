cask 'heroes-of-newerth' do
  version '3.9.5'
  sha256 'f5253ee476f3afd4724ecf3516c8ce46c049e6358f9a9f1f125b792d8f44805e'

  url "http://dl.heroesofnewerth.com/HoNClient-#{version}.dmg"
  name 'Heroes of Newerth'
  homepage 'https://www.heroesofnewerth.com/'

  app 'Heroes of Newerth.app'

  zap delete: '~/Library/Application Support/Heroes of Newerth'
end
