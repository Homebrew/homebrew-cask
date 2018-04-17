cask 'openshot-video-editor' do
  version '2.4.1'
  sha256 'b33ce8081f42b7e31681d925220709444e409be1b43293a6baa56fbd7b8da91b'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: '23854faf2d92cf2a9f7b0ea2e01f1ed707c97d0c0646310351c1619ae688caad'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
