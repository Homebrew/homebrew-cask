cask 'openshot-video-editor' do
  version '2.3.4'
  sha256 '637d2c4e0a72f2a4ae4e81c255e79e5eda6433ed7b6ac1346760c8fbed149e7e'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: '542e05435129515489447249319896c57fb7c779d509577e21407a80699ccb69'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
