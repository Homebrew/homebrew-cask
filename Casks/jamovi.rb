cask 'jamovi' do
  version '1.1.9.0'
  sha256 'edc430dd3c3be63b2e7a4ea42a09c2c7cb3d34d747f0e8b4742c37c08c00af44'

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.jamovi.org/download.html&splitter_1=macos.dmg&index_1=0&splitter_2=download-button&index_2=-1'
  name 'jamovi'
  homepage 'https://www.jamovi.org/'

  auto_updates true

  app 'jamovi.app'

  zap trash: [
               '~/Library/Application Support/jamovi/',
               '~/Library/Logs/jamovi',
               '~/Library/Preferences/org.jamovi.jamovi.plist',
               '~/Library/Saved Application State/org.jamovi.jamovi.savedState/',
             ]
end
