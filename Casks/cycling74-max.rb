cask 'cycling74-max' do
  version '7.2_160301'
  sha256 'fdeddac5ad65c70258b554e83ed884ad99716b2f1184bdd2329bc45acbe1b637'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  homepage 'https://cycling74.com/'
  license :commercial

  app 'Max.app'
end
