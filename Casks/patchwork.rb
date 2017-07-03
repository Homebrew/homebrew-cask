cask 'patchwork' do
  version '3.6.5'
  sha256 'bb95d84ae6f33d3d32eb53fb58ed2acd62dbb6c533d5f166a32ee27bb6b6188e'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '548805d36a44614dd7d98344a0061b6ca068cc3f81447382380256ae3c782a3f'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
