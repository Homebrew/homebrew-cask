cask 'scenebuilder' do
  version '8.2.0'
  sha256 '5fe9cedb8e5fa9270f75c67ef15b57043b2965547e5ac72aa3f043dc24d3f2f1'

  url "http://download.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name 'Scene Builder'
  homepage 'https://gluonhq.com/scene-builder'

  app 'SceneBuilder.app'
end
