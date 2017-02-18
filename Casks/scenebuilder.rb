cask 'scenebuilder' do
  version '8.3.0'
  sha256 'e0dfb5fbc5127e36a17f50d01a3e289ddf811b5c6655c6d7905a11a5a6277fad'

  url "http://download.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name 'Scene Builder'
  homepage 'https://gluonhq.com/products/scene-builder/'

  app 'SceneBuilder.app'
end
