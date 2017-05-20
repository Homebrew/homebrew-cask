cask 'openshot-video-editor' do
  version '2.3.3'
  sha256 '7ec5b208696abc7227f3b06798ad0e737f315b928e67d5dcf234e5a16e356704'

  # github.com/OpenShot/openshot-qt was verified as official when first introduced to the cask
  url "https://github.com/OpenShot/openshot-qt/releases/download/v#{version}/OpenShot-v#{version}-x86_64.dmg"
  appcast 'https://github.com/OpenShot/openshot-qt/releases.atom',
          checkpoint: '194faffc09a3fec4c00394c36510459cb675d8582251bee132c38c4e7d12f0cc'
  name 'OpenShot Video Editor'
  homepage 'https://openshot.org/'

  app 'OpenShot Video Editor.app'
end
