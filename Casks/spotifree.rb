cask 'spotifree' do
  version '1.6.5'
  sha256 'f518a09187bbf1c033e007fbfbd900222d17c7efd103ef239e61bfdec7caaaec'

  # github.com/ArtemGordinsky/Spotifree was verified as official when first introduced to the cask
  url "https://github.com/ArtemGordinsky/Spotifree/releases/download/#{version}/Spotifree.dmg"
  appcast 'http://spotifree.gordinskiy.com/appcast.xml',
          checkpoint: 'd6a27cb240971709d2212be2ae9e69ba229726f1e11200e08e67bd498c834d14'
  name 'Spotifree'
  homepage 'http://spotifree.gordinskiy.com/'

  app 'Spotifree.app'
end
