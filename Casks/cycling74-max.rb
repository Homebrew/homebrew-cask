cask 'cycling74-max' do
  version '7.3.5_180307'
  sha256 '53dc94069c4493856cf33ed6051366f3fa5250134cff93a9557c63b141884bd2'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast 'https://auth.cycling74.com/maxversion',
          checkpoint: 'f47a96e6d18fe6ca21a145057aa69077ba13a1fe0d3cabeb4064826fe83efddb'
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'

  app 'Max.app'
end
