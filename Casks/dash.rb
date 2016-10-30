cask 'dash' do
  version '3.4'
  sha256 '0915e485a9a38504d6d0107fbe7636aa7ba910d7b3ad8f5be67c15d437ca6856'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'e8d7a100c45c3defb5116569cc5ecf14adb8aae7ad3474c99fcfe0f890bcfc5d'
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
