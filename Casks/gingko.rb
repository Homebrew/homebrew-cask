cask 'gingko' do
  version '2.4.6'
  sha256 '241f32ffb4fe2be77790e79ffa2e00ba59128a3ecd98bccff60758d29a6beef5'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
