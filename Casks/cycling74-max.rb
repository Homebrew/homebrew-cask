cask :v1 => 'cycling74-max' do
  version '7.0.6_150930'
  sha256 '8498d56b174e214808e8ddfa05fa02c0e5b7f51b34182ab6cfe5eb9d60ef1697'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.delete('.')}.dmg"
  name 'Max'
  homepage 'https://cycling74.com/'
  license :commercial
  tags :vendor => 'Cycling ‘74'

  app 'Max.app'
end
