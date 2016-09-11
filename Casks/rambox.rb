cask 'rambox' do
  version '0.4.2'
  sha256 '329b0c4618cd2d77bbea3b751fee485b0be7954bc1b5b0615ec3c9c1d1f021b5'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '63cd52a314b6b9aa5b965b49fd04f64d534db32dd179635a54517a76341ca231'
  name 'Rambox'
  homepage 'http://rambox.pro/'
  license :oss

  app 'Rambox.app'
end
