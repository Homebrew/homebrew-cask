cask :v1 => 'cycling74-max' do
  version '7.0.5_150727'
  sha256 '61d5d5e0a4ca4d56a1bffbc49343b5624c02f0a707bfed943e8c0eb15c91c557'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.sub('-','_').gsub('.','')}.dmg"
  name 'Max'
  homepage 'https://cycling74.com/'
  license :commercial
  tags :vendor => 'Cycling ‘74'

  app 'Max.app'
end
