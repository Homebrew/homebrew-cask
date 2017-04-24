cask 'photoninja' do
  version '1.3.5c'
  sha256 '1d557da4734a84abe2f45e7f5c562dc9ebdb5a8430865a8a97bcb54361ab30d4'

  # picturecode.cachefly.net was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  name 'Photo Ninja'
  homepage 'http://www.picturecode.com/index.php'

  app "PhotoNinja_#{version}.app"
end
