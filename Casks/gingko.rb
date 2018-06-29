cask 'gingko' do
  version '2.1.2'
  sha256 'd2ab2098c3bd2e973911c80eeba204aec21759a11b33e3b0202f81f8ed4afd4e'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
