cask 'photoninja' do
  version '1.3.7a'
  sha256 'a3edcb3ec6f3b2449165b713102cb09dbb8a8f8108c2c317355e11e902bc8e2b'

  # picturecode.cachefly.net was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  name 'Photo Ninja'
  homepage 'https://www.picturecode.com/index.php'

  app "PhotoNinja_#{version}.app"
end
