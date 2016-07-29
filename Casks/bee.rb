cask 'bee' do
  version '2.3.6'
  sha256 'fc5d93159eb76aaf885cb504d756aedbb55fef5c5909c116d46431b694ea7732'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'd4b52388b045285b1ba72a37775856b4832b8507e0aae784d80dc68b30901a79'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
