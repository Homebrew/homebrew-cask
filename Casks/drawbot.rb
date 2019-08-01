cask 'drawbot' do
  version '3.120'
  sha256 '3c4367befaac968b47b71320e20132f1b0761e2830c13465004268ea446deed4'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'https://www.drawbot.com/'

  app 'DrawBot.app'
end
