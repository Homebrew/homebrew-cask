cask 'keepassxc' do
  version '2.3.1'
  sha256 '4752aaf13d768eddbdeea79a373f47e18ebbec7c055f38fef1a4ce92e505e043'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: 'c8423fb60478ea8d594135fff126f4e2e148aeb547ff60666c20540d42ea06a7'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
