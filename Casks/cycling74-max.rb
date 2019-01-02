cask 'cycling74-max' do
  version '8.0.2_181127'
  sha256 'ddc254ccc3e8cfedc13d165fe68763b2521fd6d680c6804e9cde1b1aa155c23e'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
