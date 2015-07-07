cask :v1 => 'hackhands' do
  version '1.3.2.76'
  sha256 'ba2244b15274158b08a4680dac512761c3c2b8ab2127a4e465ead10bb48fe1b9'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/builds/#{version}/osx/HackHands.dmg"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
