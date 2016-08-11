cask 'bee' do
  version '2.4'
  sha256 'c93d9b3a394500c6c91785ca87f67eae98d4bc648fe1c3a54748a62a56623e41'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '6eb1d6e34661cdf43abf831f59d615f0b95ff25ab390544fb49b8bdd3ad80d8a'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
