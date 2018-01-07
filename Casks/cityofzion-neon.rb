cask 'cityofzion-neon' do
  version '0.0.9'
  sha256 '5e76baeb7ae51a233270364a50886500b5ccfb5e5f6bd4c72eb0c49a344992c3'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '6b1d962ba9941f2063cba44e7dc6346efe2e9d641397038ff4e9c027a8675d99'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
