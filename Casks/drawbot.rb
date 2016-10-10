cask 'drawbot' do
  version '3.82'
  sha256 'fa7c6478a7a34ac61f6ff7f8e5705e789aba1730174ee8ec15c6f29c2e7f4317'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBotSettings.py',
          checkpoint: '0b1eaee8db2a260a43559382da5b02dd08be587121b256155256b433880a75e7'
  name 'DrawBot'
  homepage 'http://www.drawbot.com'

  app 'DrawBot.app'
end
