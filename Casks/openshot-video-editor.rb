cask 'openshot-video-editor' do
  version '2.4.0'
  sha256 '45cb011d65a5c09bbee192cf3230bf568079f90b119522c482bf19e76af287e6'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: '88dc2210e7c60a5e5093b12dc2810ba4c37b1156fac666ca43a3e2d7130e7ae7'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
