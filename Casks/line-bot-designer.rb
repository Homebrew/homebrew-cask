cask 'line-bot-designer' do
  version '1.2.0'
  sha256 'fbdfa28e2fae82c0395811eda20d3c3c2d4b737b9f646fd375a955ba0eb6de90'

  # d.line-scdn.net was verified as official when first introduced to the cask
  url "https://d.line-scdn.net/r/devcenter/bot-designer/LINE%20Bot%20Designer-#{version}.dmg"
  name 'LINE Bot Designer'
  homepage 'https://developers.line.me/en/bot-designer/overview/'

  app 'LINE Bot Designer.app'
end
