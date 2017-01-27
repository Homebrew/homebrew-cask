cask 'rambox' do
  version '0.5.2'
  sha256 'c396a408ec6645e4147fd526b10b3b8d9814394f39a74d5a5c6afb5a704a5894'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'cee34001a896d6de679c3bdca37743246ab2d6dce5158fb6910316418d18d4d1'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
