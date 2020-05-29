cask 'cycling74-max' do
  version '8.1.4_200527'
  sha256 '92b4b5e8754b7b30b907f3e659a57bfe5cc9700b405b65267353a02f4ec27494'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
