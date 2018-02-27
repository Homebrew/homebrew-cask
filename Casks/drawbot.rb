cask 'drawbot' do
  version '3.114'
  sha256 'e63c5c7cb78c7c62ce2c588d5dcb332892e0dafa4102ff515fb93c10d98110b8'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py',
          checkpoint: '221eff636e2e25ba8a15d67bcd2040ef83b58e7b9894753112f5ab444f46d69f'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
