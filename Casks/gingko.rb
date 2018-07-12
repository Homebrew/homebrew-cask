cask 'gingko' do
  version '2.1.4'
  sha256 '88a1579eb0814eec39cb1f2b74601c543de5d7cc88d7c7bb67ea7c90905e4c6d'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
