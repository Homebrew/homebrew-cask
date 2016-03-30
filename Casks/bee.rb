cask 'bee' do
  version '2.3.3'
  sha256 '86b25210ec5300be8fcedc7de0c02ab4042d6bb73e51b6632f6595a86a23b6dd'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'dc45cb07b458779bc3f370b59f82af07cc685fc49ae21a572df1e079fd9a76ae'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
