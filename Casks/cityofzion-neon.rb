cask 'cityofzion-neon' do
  version '0.0.4'
  sha256 'abf1e550b0c83f54388d73b5fc423d74065df634e9f9f3228453c0da6e5b34e8'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Mac.Neon-#{version}.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '1483f5331ba97f7611fc7cd976dcec03c0cf094b03dc17c72ba331008845a65b'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end
