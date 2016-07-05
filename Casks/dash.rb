cask 'dash' do
  version '3.3.0'
  sha256 'e7fc7d34bad0e7772e7cb8127da7a5510370b7dcadc3c351f31e9c23de02241a'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '972fcc13e87725cfaaefe411a97a98e606d321c4f9332ecf91789734e6e9782c'
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
