cask 'drawbot' do
  version '3.116'
  sha256 '81aa59361b9525e0bfaada902bccbd95e524952f52bbb8bd7d3971bca1894e7a'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
