cask 'drawbot' do
  version '3.96'
  sha256 '94c9bddc7f14116b34c05e77301d6760153b455ed288e4f024faf8930d576cdd'

  # typemytype.com/drawBot was verified as official when first introduced to the cask
  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  appcast 'https://raw.githubusercontent.com/typemytype/drawbot/master/drawBot/drawBotSettings.py',
          checkpoint: '0cb32c4c3065ed85f296efadc6ce4b8ab77c0de9bb388e4f15e4f4bcd4e04421'
  name 'DrawBot'
  homepage 'http://www.drawbot.com/'

  app 'DrawBot.app'
end
