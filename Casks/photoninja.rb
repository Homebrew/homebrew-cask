cask 'photoninja' do
  version '1.2.4RC'
  sha256 '6bb3d42e319f318db9232478a043f59adfc73033234cfe38cea90c11bec6d1a9'

  # cachefly.net is the official download host per the vendor homepage
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  name 'Photo Ninja'
  homepage 'http://www.picturecode.com/'
  license :commercial

  app 'PhotoNinja.app'
end
