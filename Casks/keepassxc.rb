cask 'keepassxc' do
  version '2.1.4'
  sha256 '186538b397a1302728e43bd596f96e228fd9f39ca4c94e657c48ab45a91c1738'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '760a591c31edbf5a3b04893b3baa871dc015394fc0bee66f9f1c6a39cee685e5'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
