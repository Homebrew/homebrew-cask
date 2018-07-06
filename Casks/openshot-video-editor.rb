cask 'openshot-video-editor' do
  version '2.4.2'
  sha256 'be8d67b2f5b07bdd23a4cd7877f961cef42c8b1d08b39a7f7c25fa5b1ceaf398'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
