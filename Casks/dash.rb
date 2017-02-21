cask 'dash' do
  version '4.0.0'
  sha256 'dadd3c5ba718053cf7797cb31cc2aa26779e0ffe09a2fd1e8ca19f80f63c9ab2'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '8099212241b4aa0752094cc40df311037be1dab2c87389f988022fceb53661f4'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Application Support/com.kapeli.dashdoc',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
