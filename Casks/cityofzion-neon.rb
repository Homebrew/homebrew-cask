cask 'cityofzion-neon' do
  version '0.0.9'
  sha256 '5e76baeb7ae51a233270364a50886500b5ccfb5e5f6bd4c72eb0c49a344992c3'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '00888edfcf0a1f09c9002ea4ce2fea014e1089a82b6f3aa2dc24eb2e44a1a4b3'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
