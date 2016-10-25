cask 'openshot-video-editor' do
  version '2.1.0'
  sha256 'cee76dd79b396705f4aecc5b12722259f68adc93a1123342d91e7b9dc885c349'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "http://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: '2b04bb48afe0885ba2e3d234bd1c9f644a32fd3677de72444cc288c3ec769121'
  name 'OpenShot Video Editor'
  homepage 'http://openshot.org'

  app 'OpenShot Video Editor.app'
end
