cask 'cycling74-max' do
  version '7.2.2_160420'
  sha256 'fecb399115e2388be9a727f2e83ee4a91b80e704b72f40de95e52e8ffa207385'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'
  license :commercial

  app 'Max.app'
end
