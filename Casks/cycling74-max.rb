cask 'cycling74-max' do
  version '7.2.1_160310'
  sha256 '6bf08e7c526b0bfe267a172155df695b73cd449a349867250c76729c9e48f6e6'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'
  license :commercial

  app 'Max.app'
end
