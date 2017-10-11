cask 'dash' do
  version '4.1.0'
  sha256 'bfe83eabd3d64dee34b07f0f512f2646757c60ebfbac95ea390904dabc2cecdc'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '5e54372a17217d72cc1cea453517fc07b4d3764f51bd2aa294e494f9b00b56b0'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  zap trash: [
               '~/Library/Application Support/Dash',
               '~/Library/Application Support/com.kapeli.dashdoc',
               '~/Library/Preferences/com.kapeli.dash.plist',
               '~/Library/Preferences/com.kapeli.dashdoc.plist',
             ]
end
