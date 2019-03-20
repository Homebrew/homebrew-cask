cask 'cycling74-max' do
  version '8.0.4_190319'
  sha256 'b062cc7531f58d6bc2e594f679c38c67a279f2baba06dc177eb93960be36c899'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
