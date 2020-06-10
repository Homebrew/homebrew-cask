cask 'cycling74-max' do
  version '8.1.4_200527'
  sha256 '86f4a4e1b7da1871aee5994c625b4249a64e21feb5e5d786ec0edbc1e2f1bc20'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
