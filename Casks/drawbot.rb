cask 'drawbot' do
  version '3.124'
  sha256 '53650c98b0636b716c9ada9660658025425ac76f5975a9fbbff081d137b88557'

  # github.com/typemytype/drawbot/ was verified as official when first introduced to the cask
  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg"
  appcast 'https://github.com/typemytype/drawbot/releases.atom'
  name 'DrawBot'
  homepage 'https://www.drawbot.com/'

  app 'DrawBot.app'
end
