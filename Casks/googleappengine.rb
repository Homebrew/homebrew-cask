cask 'googleappengine' do
  version '1.9.51'
  sha256 '0b20cc89fa22340eb78addaeab438b8bb8707dcc0ca5d25f8111cf549ad97a9c'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '7727eae12764a093f629e330194ac74197f10ae6a235465c608cb207fef5e846'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
