cask :v1 => 'hackhands' do

  version '1.4.2'
  sha256 '23e72f0e57f5384893744accf0ea9e977cf8d45cd79966d86bbb8c625673416a'

  url "http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/osx/#{version}/HackHands.zip"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
