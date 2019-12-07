cask 'line-bot-designer' do
  version '1.3.2'
  sha256 'd0a32f955004cfd880dbc5ba0a24f000a92f6ddc4f2c98cd2ab09202382e8634'

  # d.line-scdn.net was verified as official when first introduced to the cask
  url "https://d.line-scdn.net/r/devcenter/bot-designer/LINE%20Bot%20Designer-#{version}.dmg"
  appcast 'https://developers.line.biz/en/bot-designer/download/'
  name 'LINE Bot Designer'
  homepage 'https://developers.line.me/en/bot-designer/overview/'

  app 'LINE Bot Designer.app'
end
