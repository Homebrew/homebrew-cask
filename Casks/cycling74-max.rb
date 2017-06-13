cask 'cycling74-max' do
  version '7.3.4_170530'
  sha256 'bca65831d610702cc7ca1ffd61e9cb6878ce78e0f5f54285740c6ba54403dcec'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
