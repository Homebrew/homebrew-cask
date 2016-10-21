cask 'bee' do
  version '2.4.3'
  sha256 '58235cb6e1e99cd04db936f4109eeea8ba7bdc9b35c482edff9d26036d8eed0c'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'dfc51f2e7bb64c9f8bc3766ae325fad6be7fe7d72319aef1befe3278c55d6c84'
  name 'Bee'
  homepage 'http://neat.io/bee/'

  app 'Bee.app'
end
