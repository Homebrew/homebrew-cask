cask 'hackhands' do
  version '1.4.11'
  sha256 '638d4726d721592b4147403402b4b51bcdc848621f83d665320c03d44457c616'

  # desktop.hackhands.com.s3-website-us-west-1.amazonaws.com was verified as official when first introduced to the cask
  url "http://desktop.hackhands.com.s3-website-us-west-1.amazonaws.com/osx/#{version}/HackHands.zip"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'

  app 'HackHands.app'
end
