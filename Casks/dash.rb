cask 'dash' do
  version '3.2.2'
  sha256 'f08fc2baaa919fe4bb7bcc2f6304c4f2e3dcb2c723666e33f1dd54346412fb47'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '5e9cb55b1229c7b5b189f645dcedd8280b1262327bf1aecdcb8affa431c25dd6'
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
