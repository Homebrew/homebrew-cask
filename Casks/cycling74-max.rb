cask 'cycling74-max' do
  version '7.2.3_160517'
  sha256 '3a62fe49e09b0b1344a27ebbb26eab365c6c6d8053f0464a749ee0182178a482'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'
  license :commercial

  app 'Max.app'
end
