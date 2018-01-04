cask 'cityofzion-neon' do
  version '0.0.8'
  sha256 'a075a996462a4579f1f8084529dfc4925db7f5a3475cef405d840a3682079123'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '0bac389b7416826dd0526fdd06aa6bac9e1fe15564083635313faad451078a3d'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
