cask 'dash' do
  version '4.6.6'
  sha256 '01d2a42c845887a0a00cb6bdff25d3d52bad9faa3916b1f1f9c0aa4209fc79b6'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml"
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  zap trash: [
               '~/Library/Application Support/Dash',
               '~/Library/Application Support/com.kapeli.dashdoc',
               '~/Library/Caches/com.kapeli.dashdoc',
               '~/Library/Cookies/com.kapeli.dashdoc.binarycookies',
               '~/Library/Logs/Dash',
               '~/Library/Preferences/com.kapeli.dashdoc.plist',
             ]
end
