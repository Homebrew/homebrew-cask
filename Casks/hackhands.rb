cask 'hackhands' do
  version '1.4.11'
  sha256 '915269b78f2f3fa25bfbd878cdbaccef69420b5c6d3b7f07a0b3219ead782dd7'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/osx/#{version}/HackHands.zip"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
