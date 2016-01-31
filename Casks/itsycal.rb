cask 'itsycal' do
  version '0.10.9'
  sha256 '59a8c18ea0443a43a25a5858211abaaca1f269215c011fcc94715a171d986b88'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  # amazonaws.com verified as official when first introduced to the cask
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          checkpoint: 'd7fa19383d434d948de626620d167f19692999ffe7cd57c46627abf6a6e19747'
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
