cask 'photoninja' do
  version '1.2.7'
  sha256 'cf159ad6075fded4c4ab14c0f427bd9b54554a0eb60c3c1a6c77309933331010'

  # picturecode.cachefly.net was verified as official when first introduced to the cask
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  name 'Photo Ninja'
  homepage 'https://www.picturecode.com/'

  app "PhotoNinja_#{version}.app"
end
