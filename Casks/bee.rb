cask 'bee' do
  version '2.4.9'
  sha256 'd79a8d78b224ccafec11a6b5e0f12cb79b98a05bb4f2641a9eada9752b1f9e34'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'cdf13e782828c6f74392351b7a0533e859cd757c9de1347257119faa2fb21023'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'
end
