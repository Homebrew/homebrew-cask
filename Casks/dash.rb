cask 'dash' do
  version '4.1.0'
  sha256 'bfe83eabd3d64dee34b07f0f512f2646757c60ebfbac95ea390904dabc2cecdc'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'b5cbe70371b57826abba2466d086b12a181b6d8f4162ba3643f91bfc7e958aba'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Application Support/com.kapeli.dashdoc',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
