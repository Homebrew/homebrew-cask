cask 'gingko' do
  version '2.1.0'
  sha256 '092d36bdd15b164e5ae04a91890b42de72fd48340bc0834b910a820323c796a3'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
