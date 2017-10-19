cask 'rambox' do
  version '0.5.13'
  sha256 '8ec83ac8a82179aad47d30fdc326fc5571ca871e8cf48d2db8f5d2e52f68e51a'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '06b7e301ccad5de7627c038237b36a2325e931774399c6789099bad806a7f1e6'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
