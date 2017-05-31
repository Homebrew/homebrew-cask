cask 'rambox' do
  version '0.5.9'
  sha256 'cb0d0263a5bfb7f3ded3762f6ccc057e2ac9c1a14efa6152f7ee1aff71039093'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}.dmg"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'e1e360e15afdef800ae546ff7658e2f8271e2091beb0275e6369b81ba85c8f70'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
