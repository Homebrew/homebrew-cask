cask 'jamovi' do
  version '1.0.2.0'
  sha256 '00ea85c183ac5198e22cd372d9d5dabab9bb924498def9dd81e5d79595f616a6'

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  appcast 'https://www.jamovi.org/download.html'
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
