cask 'drawbot' do
  version '3.115'
  sha256 '7d2224121be4cc8befe3ce8343cbb68a9e1028f627434251baf0f0ca3fc816b6'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
