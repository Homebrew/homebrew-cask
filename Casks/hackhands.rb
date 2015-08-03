cask :v1 => 'hackhands' do
  version '1.4.8'
  sha256 'd91ff1cda8d6e4d9c4e892e8ad1f6ab67968b7d2db53de4c8f8b6e5122a601e8'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/osx/#{version}/HackHands.zip"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
