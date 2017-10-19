cask 'keepassxc' do
  version '2.2.1'
  sha256 '8e43aa0afbd19c436c1ef11972065eff1444aa90be2837811067d40e46138ae1'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '86e11b31a0b9086cc35baf35c514f0b309db9929df285d104526303d426d4b96'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
