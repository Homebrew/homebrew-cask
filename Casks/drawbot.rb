cask 'drawbot' do
  version '3.117'
  sha256 '2df0165493463a1057525cf97fb8e2df89374082d53f180958a745936aa86607'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
