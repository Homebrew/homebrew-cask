cask 'bee' do
  version '2.4.4'
  sha256 'a6dcb6f1915903eb518f1011b4fa6297fc1ff318a3f22a481ebe398cf168720e'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '24d4f97bafc024fc43623d37ac49e69f1ee2db89dbae3c2fef10c39a3e6275dc'
  name 'Bee'
  homepage 'http://neat.io/bee/'

  app 'Bee.app'
end
