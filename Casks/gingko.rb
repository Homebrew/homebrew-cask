cask 'gingko' do
  version '2.4.11'
  sha256 '29533740f8b406f61ad6b620323ad23968b30a5e726bfff8b1697b2f8dca8390'

  # github.com/gingko/client/ was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
