cask 'cycling74-max' do
  version '7.3.1_161019'
  sha256 'a03ea117c8d40bbc203188d114dc22d0abe4c96281c6d5afa3e1037fa1339af1'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
