cask 'dash' do
  version '3.2.2'
  sha256 'd4683fa987d81db1f1fe21281c44176915cf2908e6b19e5775475007baf5ceb3'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '13cc1341149180dcef4a8a7e90d361de1f42c9898a08f235b6d4a7e28c4931c5'
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
