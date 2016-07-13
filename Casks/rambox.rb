cask 'rambox' do
  version '0.4.0'
  sha256 'd9fc4cc016a5089e3a3adf06d402b66b6e3bd90d8d035ea3acc23d75b363a72e'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '2855475a5035211f21b3893bd9164a3d02ebdf1e46ffa7da2d9a363246eda8b1'
  name 'Rambox'
  homepage 'http://rambox.pro/'
  license :oss

  app 'Rambox.app'
end
