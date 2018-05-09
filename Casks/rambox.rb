cask 'rambox' do
  version '0.5.17'
  sha256 '530ce10f337261e77be3c954dae7fd3cdda4299a55585876ca7e4ac54a315e97'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '4b7470886606078c2febf7cb84d936e3d7890af5af4d0fd146f7dee35151313d'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end
