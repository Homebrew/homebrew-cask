cask 'openshot-video-editor' do
  version '2.5.0'
  sha256 '8b0efe95f92cae2580b91487211e56a91c95ac1e05676865bff027c590036130'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
