cask 'keepassxc' do
  version '2.1.2'
  sha256 '04af9a73cb8af055f209409c10a54bc82e06c8ad788d4ee431ff48757854a431'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: 'b4c39c3238663ed3a961552df7d77e30cfb107eb7e95b9f98833adebf2314c82'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
