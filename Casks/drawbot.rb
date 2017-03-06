cask 'drawbot' do
  version '3.94'
  sha256 '6c8e43816ea05efa53439d2f2e147443d4e45aec06d7fc5676c05d49d17a2764'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py',
          checkpoint: 'b2f58ba11dcf9e3fef254e84aed69e185e72b18236ef63be6cdf86a86ae8bb53'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
