cask :v1 => 'photoscan' do
  version '1.1.0'
  sha256 '776d2c1113ba20a3f4293bf04dbdfb971916f31b3ec7f9972778d776a475f689'

  url "http://download.agisoft.com/photoscan_#{version.gsub('.','_')}.dmg"
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com'
  license :commercial

  app 'PhotoScan.app'
end
