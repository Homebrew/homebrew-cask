cask 'keepassxc' do
  version '2.2.4'
  sha256 '69ce702d25fb015521714bf6f2542261a65862ec36a176f30e9f612dc27bffb8'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: 'c41e0a4c48f2580113e4ec8d0b8a69bbd90dbe0a2ffc8f4d660c774a66e4d1d7'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
