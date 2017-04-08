cask 'keepassxc' do
  version '2.1.3'
  sha256 '1a31ed5236f1c69698b65c2360b7499ef9bc3c77a37a6b465672753625552b63'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '13e80f21f311288d042402f0f3e7d5e8bfacefaaf649c2834014f9c56a856fe8'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
