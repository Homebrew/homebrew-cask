cask 'cycling74-max' do
  version '7.2.4_160725'
  sha256 '1b828aae6105f33cc1c3662c956f97d66f668aef6efbbe37468565946ffc1175'

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  name 'Cycling ‘74 Max'
  name 'Ableton Max for Live'
  homepage 'https://cycling74.com/'
  license :commercial

  app 'Max.app'
end
