cask 'cityofzion-neon' do
  version '0.0.6'
  sha256 '8085100f0fa0b30b6c70ae54a546f336609b0e6d6bf9015fd360f293a9039435'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Mac.Neon-#{version}.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '55742dae6d64b78fbfee66358fb11b573e005ae80a6039a0d3da95ebafdcc746'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
