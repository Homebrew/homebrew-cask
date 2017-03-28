cask 'openshot-video-editor' do
  version '2.2.0'
  sha256 '1324b81f0bb2c3c756585df330af816bef8278cb8f5b7dc7a6c615b72701ce18'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: 'c745bfaef941e2a1c02f218203a80765b19fef9792e0325e9f8bae475d84f021'
  name 'OpenShot Video Editor'
  homepage 'http://openshot.org/'

  app 'OpenShot Video Editor.app'
end
