cask 'openshot-video-editor' do
  version 'v2.1.0'
  sha256 'cee76dd79b396705f4aecc5b12722259f68adc93a1123342d91e7b9dc885c349'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "http://github.com/OpenShot/openshot-qt/releases/download/#{version}/OpenShot-#{version}.dmg"
  name 'OpenShot Video Editor'
  homepage 'http://openshot.org'

  app 'OpenShot Video Editor.app'
end
