cask 'scenebuilder' do
  version '8.4.1'
  sha256 'b2750db0faefd52c6500cd7656cad5fa47fcbcc0ea1c7becc543229ea1fa6069'

  url "http://download.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name 'Scene Builder'
  homepage 'https://gluonhq.com/products/scene-builder/'

  app 'SceneBuilder.app'
end
