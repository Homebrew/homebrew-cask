cask 'dash' do
  version '4.0.4'
  sha256 '6b8c2002cf085d6f57a42309f02f4b0da418e78783fcc675af77e27c2e73afcc'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '804b702227c6589a251bd0ef284e24286e10995a6087241be7cf90e3dfff2323'
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
