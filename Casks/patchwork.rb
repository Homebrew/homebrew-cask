cask 'patchwork' do
  version '3.8.6'
  sha256 '14d0ca43f5fb94805d64dfb2a198054e8ddbc265d4951e0ae7f6b85a887fda46'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '59837a5ffc3ed04be9a9af01aa907f0eb36d02e6156d0f44a67741a554b42397'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
