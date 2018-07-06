cask 'line-bot-designer' do
  version '1.0.0'
  sha256 'cb7d52cfc199089c585741d44338f47b1c995687eac4c3e0338c41d8b3fe31ed'

  # d.line-scdn.net was verified as official when first introduced to the cask
  url "https://d.line-scdn.net/r/devcenter/bot-designer/LINE%20Bot%20Designer-#{version}.dmg"
  name 'LINE Bot Designer'
  homepage 'https://developers.line.me/en/bot-designer/overview/'

  app 'LINE Bot Designer.app'
end
