cask 'openshot-video-editor' do
  version '2.0.7'
  sha256 '5308836bf101d8f74975e27ec45a118064c876c4f7ad997fe6af72d503b61429'

  url "http://releases.openshot.org/mac/OpenShot-#{version}.dmg"
  name 'OpenShot Video Editor'
  homepage 'http://openshot.org'
  license :gpl

  app 'OpenShot Video Editor.app'
end
