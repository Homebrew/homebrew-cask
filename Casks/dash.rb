cask 'dash' do
  version '3.4.2'
  sha256 '37b4552d7d5773054a914c512aa5db313c8a84c3da5e9756d0f374b695851bfc'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '48847cb6df60e630901982d45d6d71f9a214bc7c927520123b81b9536308478f'
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
