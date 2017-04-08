cask 'drawbot' do
  version '3.95'
  sha256 'cd92dd2f4f6eb886c752401623ab039adba93561dbe797e8af4bd99911d399a6'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py',
          checkpoint: '7a626a14ccca184ac5e5085005db611b6cf8f878f82dbaf02fabb24e46dfed74'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
