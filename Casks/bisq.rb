cask 'bisq' do
  version '1.3.4'
  sha256 'aa623fc384327f64d92d7f37ecd1be675e17d5b9802a60944b8b638ef02f147f'

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
