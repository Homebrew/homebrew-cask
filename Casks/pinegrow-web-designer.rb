cask :v1 => 'pinegrow-web-designer' do
  version '2.00'
  sha256 '9cfaf6538e52d00022f928dd109f1bb064af7f4a42c01cce83c10ba18957a081'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  name 'Pinegrow Web Editor'
  name 'Pinegrow Web Designer'
  homepage 'http://pinegrow.com/'
  license :commercial

  app 'Pinegrow Web Designer.app'
end
