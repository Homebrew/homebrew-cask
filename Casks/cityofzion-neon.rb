cask 'cityofzion-neon' do
  version '0.0.5'
  sha256 'aea6c39528f8104c938343ef0101bd8be0f089a217792092988691eda6fb71e8'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Mac.Neon-#{version}.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: 'cf5659c03278421d494586a23cb9d97c35a0ef5a71fad87415e6a8857253f368'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
