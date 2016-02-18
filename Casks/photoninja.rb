cask 'photoninja' do
  version '1.2.7'
  sha256 'cf159ad6075fded4c4ab14c0f427bd9b54554a0eb60c3c1a6c77309933331010'

  # cachefly.net is the official download host per the vendor homepage
  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  name 'Photo Ninja'
  homepage 'http://www.picturecode.com/'
  license :commercial

  app "PhotoNinja_#{version}.app"
end
