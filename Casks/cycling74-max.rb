cask 'cycling74-max' do
  version '8.0.6_190611'
  sha256 '2d7bf4dfb26a1ec2fdaa6896669a270fa8966d6982f550a9bf4bbd199e46ef28'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
