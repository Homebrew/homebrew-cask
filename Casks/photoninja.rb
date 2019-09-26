cask 'photoninja' do
  version '1.3.8'
  sha256 '8e892330ec4bd9296b97e7a3068de0f6b7e7b0098d0b984d360ff4c836b50431'

  # picturecode.cachefly.net was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  appcast 'https://www.picturecode.com/download.php'
  name 'Photo Ninja'
  homepage 'https://www.picturecode.com/index.php'

  app "PhotoNinja_#{version}.app"
end
