cask 'bee' do
  version '2.4.6'
  sha256 '49c1289e03598458b9831e2b9caeda266f89af7064568b221ae097b736219b62'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'https://s3.amazonaws.com/www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: '6074bbacf3a40d34de66e54fb1da82c39cfc986b7888774eee0e682faadc0b43'
  name 'Bee'
  homepage 'http://www.neat.io/bee/'

  app 'Bee.app'
end
