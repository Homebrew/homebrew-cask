cask 'dash' do
  version '4.1.5'
  sha256 '1bb8cd828a8951e4574c12d6825568cffd3b1d6ff808d53770a12dc81c2e3952'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'f893b0a228ddb5748140feb3aec2dc5caa05da4c9bbc9f8cb062e786d53b72dc'
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
