cask 'bee' do
  version '2.4.11'
  sha256 'e274ef79065a077427774727f2896b340a98b0a0703ab8a491302cdf32463070'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '05094dc3e9f421d0dc0c0656ade2da908f389873672b94f63e03e79b10d2f5c8'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'

  zap delete: [
                '~/Library/Application Scripts/io.neat.Bee',
                '~/Library/Application Scripts/io.neat.Bee-Mutator',
                '~/Library/Application Scripts/io.neat.Bee-Updater',
                '~/Library/Containers/io.neat.Bee',
                '~/Library/Containers/io.neat.Bee-Mutator',
              ]
end
