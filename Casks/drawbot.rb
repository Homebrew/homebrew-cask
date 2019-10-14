cask 'drawbot' do
  version '3.121'
  sha256 '68b8327fcacf21db7d37374a389fe5609d87eac6e6df01993b0effffef95aa71'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'https://www.drawbot.com/'

  app 'DrawBot.app'
end
