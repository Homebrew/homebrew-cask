cask 'rambox' do
  version '0.5.3'
  sha256 '17b70119483ca85a274fdceacfaf1284e2e069a3dd17683f160f54861f2b8ff1'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'cee34001a896d6de679c3bdca37743246ab2d6dce5158fb6910316418d18d4d1'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
