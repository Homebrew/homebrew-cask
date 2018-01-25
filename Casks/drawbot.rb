cask 'drawbot' do
  version '3.112'
  sha256 '5ceb7ac8ee5a94fca235c653becc71f4916a7bb1626985133dd91c0cb219e238'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py',
          checkpoint: 'c79e3fb9b5c6705cc587d7288740d4971f6710bf82e733061dd7ce5ca9a54a42'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
