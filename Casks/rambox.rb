cask 'rambox' do
  version '0.5.3'
  sha256 '17b70119483ca85a274fdceacfaf1284e2e069a3dd17683f160f54861f2b8ff1'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'c369b3c85ab8d13a30619116cbb93c1a87e6c24130f79cdcd786f8182754b3e8'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
