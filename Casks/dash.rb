cask 'dash' do
  version '3.4.3'
  sha256 '752c7b966709afa35759396b0b79172e8d2c54aff4c00ba9c01b3dd294df786b'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '1cedfe90c21e4094e6841a99176773d5705c84d85b7ab34f80582461695e1624'
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
