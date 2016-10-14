cask 'cycling74-max' do
  version '7.3.0_161012'
  sha256 '20893b1f26a41675ef565710eb7299f2e9ac946399430afc289eca3c02be580c'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
