cask 'heroes-of-newerth' do
  version :latest
  sha256 :no_check

  url 'http://dl.heroesofnewerth.com/installers/mac/HoNClient.dmg'
  name 'Heroes of Newerth'
  homepage 'https://www.heroesofnewerth.com/'

  app 'Heroes of Newerth.app'

  zap trash: '~/Library/Application Support/Heroes of Newerth'
end
