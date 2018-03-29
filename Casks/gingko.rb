cask 'gingko' do
  version '2.0.2'
  sha256 '01adcb4c224880f96341561874ba77fb75dcb37136b7d864a0ed5c4b5f8057af'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/gingko-client-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom',
          checkpoint: 'd6fceeeaeb98879af1506191eaf74cfe78d5f2319c7337f12c3bd9035e2f93cf'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
