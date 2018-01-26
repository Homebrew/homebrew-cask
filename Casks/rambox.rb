cask 'rambox' do
  version '0.5.14'
  sha256 'a29c552a8c9fad79c2587e2bdf21a8567e70aeaeabc7a30684210d2889bf5eff'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '7a7f39e2d7062b30f033929b2730b56020827f4e3fd9d3254967c0b98e3f25f0'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
