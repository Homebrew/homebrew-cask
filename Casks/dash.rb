cask 'dash' do
  version '4.0.2'
  sha256 '8d4fdff79b808f5ddb4020e13d58f5c21c590c07a4a74c48ead477a17cb910c7'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '3b5484d105f086b86f594ffc0793c9e7dec33737d13bb9d1c9c95f50002902a5'
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
