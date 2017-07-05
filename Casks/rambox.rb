cask 'rambox' do
  version '0.5.10'
  sha256 '7d2c6bbacf361d73bfb59e2dd714f8664be5cc45b476f11502a8603b9e0ac097'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}.dmg"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '43453ca275449cfb6212d33fe7b6605497e4d0c093b7ba2bf1ad2db3be6a6e16'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
