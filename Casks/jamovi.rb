cask 'jamovi' do
  version '0.9.6.1'
  sha256 '671a10136c8cf89c8b003346f83831361961bfa9f4fd799555796ef698b3d3aa'

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
