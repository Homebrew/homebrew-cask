cask 'keepassxc' do
  version '2.1.0'
  sha256 '44f126aebd0993a8c2b200595c37ee0d864eacc7cb3a61abd4ecd89a546e81d6'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '1f990f1b8e6092f28e2209a93c8b58a90c4f84eba8f2b5d365c64a43b5a044ce'
  name 'KeePassXC'
  homepage 'https://keepassxreboot.github.io/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
