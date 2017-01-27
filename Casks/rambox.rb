cask 'rambox' do
  version '0.5.2'
  sha256 'c396a408ec6645e4147fd526b10b3b8d9814394f39a74d5a5c6afb5a704a5894'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '2689c99aa959590944dea05630ca4de5c467be555b2ade277faa7cb3ef6ef970'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
