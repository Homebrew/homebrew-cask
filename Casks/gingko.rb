cask 'gingko' do
  version '2.0.11'
  sha256 '12ee22d22bfed6a6372cdb9ece5fc0b0aee61e12000e12567cb16e7e1ac6761f'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom',
          checkpoint: '5a67c3b56f03182c28a6e7fe25db766a30b8cf76dc14a1d8dd71a23fc13b7ce3'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
