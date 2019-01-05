cask 'drawbot' do
  version '3.118'
  sha256 '11bcc76f59c30bfa1c231a8d7953be12b0de756debc9efcc005f47cca205fd80'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
