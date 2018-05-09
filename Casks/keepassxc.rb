cask 'keepassxc' do
  version '2.3.3'
  sha256 '1219dd686aee2549ef8fe688aeef22e85272a8ccbefdbbb64c0e5601db17fbdb'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: 'd8fd1f18b891d646d5021bd25a0fc9f2a8ccc4e57d2631ce4b286950ed73b765'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
