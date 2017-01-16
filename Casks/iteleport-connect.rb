cask 'iteleport-connect' do
  version '6.0.0.2'
  sha256 '834098a95c95183782e498de6427e3106b867a1f1793e4fe1306bb065baa732f'

  url "http://www.iteleportmobile.com/download/iTeleport%20Connect.v#{version}.app.zip"
  appcast 'http://www.iteleportmobile.com/download/sparkle.xml',
          checkpoint: '892ff0a386d02d45828ce48baf1c761bd1b1b1091eeab70f28dbab4245e88aab'
  name 'iTeleport Connect'
  homepage 'http://www.iteleportmobile.com/connect'

  auto_updates true

  app 'iTeleport Connect.app'
end
