cask 'dash' do
  version '3.3.0'
  sha256 '3dbc6c2205af35db5370c7642b9a2b833668880569b9c64a7f5a670bf9911130'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '67613d3c428a93fa4d1d8dfbccb67bb4344cda546119fe7db1e557a26b041038'
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
