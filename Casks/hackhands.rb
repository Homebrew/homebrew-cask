cask :v1 => 'hackhands' do
  version '0.1.1'
  sha256 'f3d5b67a79d963f88ddc03d2e5947a19a616a670442b2b1389159bd3960dcd8d'

  url 'http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/v0.1.1/osx/HackHands.zip'
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
