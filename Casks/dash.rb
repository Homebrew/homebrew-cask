cask 'dash' do
  version '3.4.2'
  sha256 '5254207b0416688e03633976e307f95bf74707c4bd8bae5fc7316cee1bba52b7'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'e4778350caededf3305e15e1cd05e51f402539e33f4d8ae6801d8bc50757f46a'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

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
