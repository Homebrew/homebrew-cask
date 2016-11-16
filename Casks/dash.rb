cask 'dash' do
  version '3.4'
  sha256 '6f43e7cfcc21497c23469c6db32da0d2bf34de6692b8a3f3fad976dce7c39c1a'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '5a65d4ea85dbf61b3158184dc24cfd449b00fa476096e6b6230f92f04ac385b9'
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
