cask 'cycling74-max' do
  version '8.1.5_200616'
  sha256 '8b778fa10234c603eee698b42274872182889fc414f41f8d0adba6d45cb61dd8'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
