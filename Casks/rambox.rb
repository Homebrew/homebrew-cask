cask 'rambox' do
  version '0.5.13'
  sha256 '8ec83ac8a82179aad47d30fdc326fc5571ca871e8cf48d2db8f5d2e52f68e51a'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '9bc7f0f8750f8c3ddb6034aed438c4eb2a9494a3f262cdaebc53acb6295ebd95'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
