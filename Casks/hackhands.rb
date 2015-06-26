cask :v1 => 'hackhands' do
  version '1.3.2.76'
  sha256 :no_check

  url 'http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/builds/#{version}/osx/HackHands.zip'
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
