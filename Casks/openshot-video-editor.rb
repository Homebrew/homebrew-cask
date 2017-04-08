cask 'openshot-video-editor' do
  version '2.3.1'
  sha256 '735b1e511f97bceca0306f8afb0c81509f88b75f2334d2d0bbd1c289d393293d'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: '150d0dc218d3d53e4f30e45accc245d8b12c9951e55dd68f48f0bc445be0eee8'
  name 'OpenShot Video Editor'
  homepage 'http://openshot.org/'

  app 'OpenShot Video Editor.app'
end
