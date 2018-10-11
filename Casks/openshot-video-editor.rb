cask 'openshot-video-editor' do
  version '2.4.3'
  sha256 'e3b2b7175e6cd596c7c5676d4a254cd2a4a27f943bb5941120d3c0c18f19d53c'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
