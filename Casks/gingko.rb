cask 'gingko' do
  version '2.0.3'
  sha256 'b4bc777285316d1d23bc8c557edc09aea6613b6cc4b57e06015d412c02126242'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom',
          checkpoint: '7b00b6fa99d1732d47ec75c3528b61059f06c3b6dc7344958541ad9a9e276e31'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
