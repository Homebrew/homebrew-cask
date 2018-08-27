cask 'rambox' do
  version '0.5.17'
  sha256 '530ce10f337261e77be3c954dae7fd3cdda4299a55585876ca7e4ac54a315e97'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end
