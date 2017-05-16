cask 'openshot-video-editor' do
  version '2.3.1'
  sha256 '735b1e511f97bceca0306f8afb0c81509f88b75f2334d2d0bbd1c289d393293d'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: 'b9d68ef0727965693320bced947420b4cff9ecc8386e43fdc46fe98ce4405662'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
