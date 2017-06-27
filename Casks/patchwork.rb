cask 'patchwork' do
  version '3.5.1'
  sha256 'bd8b91f6ce9a3291140060229f10f0807ca37fb0b98c14f6c3e03d62a43d408b'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: 'ef5de6d58580dceda0a990c0c979aefec1bff3217d3b0b08f20ed4495c0ff9ad'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
