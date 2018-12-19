cask 'photoninja' do
  version '1.3.6b'
  sha256 '68b89b21ae63817dedeb3a0647ffa413684028d179018fed33b39f16bbd333bb'

  # picturecode.cachefly.net was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  name 'Photo Ninja'
  homepage 'https://www.picturecode.com/index.php'

  app "PhotoNinja_#{version}.app"
end
