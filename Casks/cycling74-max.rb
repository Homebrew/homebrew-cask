cask 'cycling74-max' do
  version '7.1_151214'
  sha256 'bad6240c1f67d9be7dbfb8ee5351d42f1d5fdd5d76436fc0dd40b43b5dab660e'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  homepage 'https://cycling74.com/'
  license :commercial

  app 'Max.app'
end
