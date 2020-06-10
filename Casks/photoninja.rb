cask 'photoninja' do
  version '1.3.9'
  sha256 'f08dcb13709460e94898176bc0276716026974326eca24efc3927ecef24de0a9'

  # picturecode.cachefly.net/ was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  appcast 'https://www.picturecode.com/download.php'
  name 'Photo Ninja'
  homepage 'https://www.picturecode.com/index.php'

  app "PhotoNinja_#{version}.app"
end
