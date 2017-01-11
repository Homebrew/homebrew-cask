cask 'drawbot' do
  version '3.89'
  sha256 '9792ea095e3b900cdd22d0fa7b1c5c2bed5a450e42ec1fdf4f10e0b3af616e2e'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBotSettings.py',
          checkpoint: '22f116a5a7ee07b372973d15b4f0bc5e693e9025f57e5b0f018182bdc51a8d89'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
