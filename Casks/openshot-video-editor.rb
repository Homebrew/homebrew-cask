cask 'openshot-video-editor' do
  version '2.3.2'
  sha256 'e65ff6fdcdfeb11880b0fac95fad86b06b334927ef58b4c9f5e985a166eba57c'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: 'b9d68ef0727965693320bced947420b4cff9ecc8386e43fdc46fe98ce4405662'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
