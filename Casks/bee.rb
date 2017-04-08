cask 'bee' do
  version '2.4.10'
  sha256 '65a9ba7cc0eb48249cf57ef31f0e56338a0c72dd39bdc0668f0c4284b82cfbfd'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '577df18dd9fd5db5a9d7f02cc3e985be21b70c2de51becc9b2d0f553ba4da707'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'
end
