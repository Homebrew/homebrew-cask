cask 'dash' do
  version '3.3.1'
  sha256 '6c5de63dc1ec34c56bd2704e409b4df6efcdfc5fab267f1eb785a8cc345b9937'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '7ebd8e2c02a8c003e0fc7098fefc2313fc8bdd670a1ed711d2b89f05b163e0cc'
  name 'Dash'
  homepage 'https://kapeli.com/dash'
  license :commercial

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
