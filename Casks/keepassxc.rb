cask 'keepassxc' do
  version '2.2.2'
  sha256 'e9f80042d0aa1d19e5f20f492224895138cd752cd0a963c4dad1e42e1544a4dd'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '6776dc2b09e6dfb93a04ff19f0b538f8e7c112125ee13494fd2ece9772a7c5e7'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
