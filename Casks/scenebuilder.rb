cask 'scenebuilder' do
  version '10.0.0'
  sha256 '23fc560edb6c09c7c4c71fa8f1a39f5bba42ede1e9312a22baf21d43f1e9496a'

  url "http://download.gluonhq.com/scenebuilder/#{version}/install/mac/SceneBuilder-#{version}.dmg"
  name 'Scene Builder'
  homepage 'https://gluonhq.com/products/scene-builder/'

  app 'SceneBuilder.app'
end
