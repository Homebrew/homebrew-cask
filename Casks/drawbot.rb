cask 'drawbot' do
  version '3.94'
  sha256 '6c8e43816ea05efa53439d2f2e147443d4e45aec06d7fc5676c05d49d17a2764'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBotSettings.py',
          checkpoint: '395408a3dc9c3db2b5c200b8722a13a60898c861633b99e6e250186adffd1370'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
