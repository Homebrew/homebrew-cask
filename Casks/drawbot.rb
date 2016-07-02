cask 'drawbot' do
  version :latest
  sha256 :no_check

  url 'http://static.typemytype.com/drawBot/DrawBot.dmg'
  name 'DrawBot'
  homepage 'http://www.drawbot.com'
  license :bsd

  app 'DrawBot.app'
end
