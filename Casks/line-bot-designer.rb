cask 'line-bot-designer' do
  version '1.3.3'
  sha256 '96216a3614a2c1419fa7b94043db23d55a86d128d44a1b4f2bccd5fdd03f7667'

  # d.line-scdn.net was verified as official when first introduced to the cask
  url "https://d.line-scdn.net/r/devcenter/bot-designer/LINE%20Bot%20Designer-#{version}.dmg"
  appcast 'https://developers.line.biz/en/bot-designer/download/'
  name 'LINE Bot Designer'
  homepage 'https://developers.line.biz/en/'

  app 'LINE Bot Designer.app'
end
