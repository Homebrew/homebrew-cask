cask 'drawbot' do
  version '3.97'
  sha256 'cc3ae6468fdec93a5177ae938d9747fa71fa9eebae8ef5c345b57b0c1a6244a2'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py',
          checkpoint: '64c0b2764844891141610cbf22251d6d91fb7869192e808d3ec6038eb1049e0e'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
