cask 'photoninja' do
  version '1.3.8b'
  sha256 '40709d2711ab780054efccc5550941e4f31240311ed62fdf418378eb558a48cb'

  # picturecode.cachefly.net was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  appcast 'https://www.picturecode.com/download.php'
  name 'Photo Ninja'
  homepage 'https://www.picturecode.com/index.php'

  app "PhotoNinja_#{version}.app"
end
