cask 'gingko' do
  version '2.0.10'
  sha256 '8669d7a46e4b682915d60953cdf8b963e96a8d4cf631b58a5972fdde4281f8f8'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom',
          checkpoint: 'f2da6d0929c3b1af26de928ebb4e0258df797954f07e533f27affc9ec192639a'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
