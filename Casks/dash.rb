cask 'dash' do
  version '4.1.4'
  sha256 '70884d18b71486ba2144161a8fbb0a88224d77424f4322868feb2c3eff81a016'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'bfcc93458f92606a6c3edc7ed6e47efb8ca673b1d4b1cd2071709268af384ceb'
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
