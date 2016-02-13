cask 'dash' do
  version '3.2.2'
  sha256 'f08fc2baaa919fe4bb7bcc2f6304c4f2e3dcb2c723666e33f1dd54346412fb47'

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
