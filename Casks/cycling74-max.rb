cask 'cycling74-max' do
  version '8.1.2_200128'
  sha256 '6675c92041444dcba5c36eec52e4aa235f956425d6d5796d847ed17de1edddb7'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
