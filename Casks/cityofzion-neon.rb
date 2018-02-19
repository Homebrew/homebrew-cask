cask 'cityofzion-neon' do
  version '0.1.4'
  sha256 '0e5ce25c0bd46f9a43b103fbdc75a6fdcaaf06088dd5e5781807fb1cf29cb5ce'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: 'c66b7789cf71e827bf9277a94cde2da1e1ebbd54af0babe51312acc27507f375'
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
