cask 'dash' do
  version '4.1.1'
  sha256 '55643d0199c69df37d610d8db8c12396d28784534f1f0364d07563e883a8fd25'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'b3c372426490688e5211e2870bb908dafd2f8e8dfb80be7f8e21da5b4fb05798'
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
