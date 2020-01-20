cask 'dash' do
  if MacOS.version <= :high_sierra
    version '4.6.7'
    sha256 'e2b5eb996645b25f12ccae15e24b1b0d8007bc5fed925e14ce7be45a2b693fb6'
  else
    version '5.1.1'
    sha256 '7759d18edf700a171d809024a36a28c291c30829acd97952b7f42b846d19043c'
  end

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
