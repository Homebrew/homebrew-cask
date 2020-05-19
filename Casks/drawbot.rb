cask 'drawbot' do
  version '3.125'
  sha256 '755cf23e1bbcd2e38e69db0021aa6054e7c4426a3e395cde3455db3feacb2fee'

  # github.com/typemytype/drawbot/ was verified as official when first introduced to the cask
  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg"
  appcast 'https://github.com/typemytype/drawbot/releases.atom'
  name 'DrawBot'
  homepage 'https://www.drawbot.com/'

  app 'DrawBot.app'
end
