cask :v1 => 'pinegrow-web-designer' do
  version '2.01'
  sha256 'f6811ca1cda6fcb370a5dbdc7742cc4aa7b2f26b7573d7ad75f83a5c10860782'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  name 'Pinegrow Web Editor'
  name 'Pinegrow Web Designer'
  homepage 'http://pinegrow.com/'
  license :commercial

  app 'Pinegrow Web Designer.app'
end
