cask 'dash' do
  version '4.0.3'
  sha256 '2cc7c5ed7a92f521d054a592d2a5c75992830eea796b22e40aec1ba0d592cec9'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'e362fcfad0ecd22a66dd9c650ad74c034c56ce186e27d26d437b3e5a61a71b26'
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
