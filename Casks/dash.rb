cask 'dash' do
  version '3.2.3'
  sha256 '70e27e2c704d6c199446d49b87fa2c0d4035e5473e010ed3ae49baff54fde88e'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '147400c1b4104e71105e2ace1f253adf45e327a48f777e2833a8dce3b25459a1'
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
