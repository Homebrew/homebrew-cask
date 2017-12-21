cask 'cityofzion-neon' do
  version '0.0.7'
  sha256 '21510de71999ed23cac15a3d07069cca8f83cf0f2492e45260fa51ead33fac73'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: 'ed3bfa1d3af402723e24dda6183cd5abc7a9f0103be6a82fbc80a189958147dd'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
