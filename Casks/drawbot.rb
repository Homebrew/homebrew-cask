cask 'drawbot' do
  version '3.122'
  sha256 '9cdb142da6f4585384bf624ff06d29a184d84aa80987b060587f14eda7273582'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'https://www.drawbot.com/'

  app 'DrawBot.app'
end
