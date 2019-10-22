cask 'openshot-video-editor' do
  version '2.4.4'
  sha256 '7b9ca5d916f96cb4600c210b9463400299e34c272121224639e33d5671c29613'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
