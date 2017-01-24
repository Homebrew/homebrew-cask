cask 'keepassxc' do
  version '2.1.0'
  sha256 'dc7ff0c75bb491e8d25ce2e332011c5883b5552e7a8456d14f3905c1f03a8f19'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '1f990f1b8e6092f28e2209a93c8b58a90c4f84eba8f2b5d365c64a43b5a044ce'
  name 'KeePassXC'
  homepage 'https://keepassxreboot.github.io/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
