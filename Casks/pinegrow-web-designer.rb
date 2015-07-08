cask :v1 => 'pinegrow-web-designer' do
  version '2.1'
  sha256 '983fd7974606981c005631f41985e62cdf1a851fa2da19eeb6664335875ad2b4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  name 'Pinegrow Web Editor'
  name 'Pinegrow Web Designer'
  homepage 'http://pinegrow.com/'
  license :commercial

  app 'Pinegrow Web Designer.app'
end
