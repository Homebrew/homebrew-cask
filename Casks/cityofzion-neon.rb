cask 'cityofzion-neon' do
  version '0.2.3'
  sha256 '40b97c53e14739d9fb3c3694f177b0cafb3fb43eee7d7cc045ab80cabc25ae71'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '68544a5b08766471e85f08aea9653eb05e7e451674c4558181e896fa0c6098da'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'

  zap trash: [
               '~/Library/Application Support/Neon',
               '~/Library/Preferences/com.electron.neon.helper.plist',
               '~/Library/Preferences/com.electron.neon.plist',
               '~/Library/Saved Application State/com.electron.neon.savedState',
             ]
end
