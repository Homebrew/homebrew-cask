cask 'bee' do
  version '2.3.4'
  sha256 '674ca80554b5d706598643fb1ea40ce36f7f3515fe426472d938889abc80e8eb'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'e4f0b8fd6492cd7c346721895b845c947c5cc132afb3d90591cbd6169b3ae453'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
