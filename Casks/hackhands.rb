cask :v1 => 'hackhands' do
  version '1.4.9'
  sha256 'f34e8d01fbe1c47912ce9c5238852a11fc406f1ff143f9c995439d27ec7e8313'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/osx/#{version}/HackHands.zip"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
