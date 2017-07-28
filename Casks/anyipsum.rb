cask 'anyipsum' do
  version '0.1.4'
  sha256 'cfb13bbcc2a7ae9e55d26810fb6fb747c9740e0fb18d09d849e7ad6e8af9f139'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom',
          checkpoint: '8f033c12e8a716023314c9c6c61925143fecf32613ebea8df57ce34ca38ec18e'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
