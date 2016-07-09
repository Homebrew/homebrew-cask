cask 'dash' do
  version '3.3.0'
  sha256 '526d747d99a93b760f7965e25a57ed61de9b93d566a0ba0c5f1c7e83719b20fd'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '251fb0cd5499990c4d8deda47997f08b6b4963e9e4f0e7e4c83045fd6e6915c7'
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
