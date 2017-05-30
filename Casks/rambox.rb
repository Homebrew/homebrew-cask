cask 'rambox' do
  version '0.5.3'
  sha256 '17b70119483ca85a274fdceacfaf1284e2e069a3dd17683f160f54861f2b8ff1'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '69e3539c98d4e423d8a0848758fe964fbc519f8549a2bf0a8b43cc69c003ede9'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
