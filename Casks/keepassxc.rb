cask 'keepassxc' do
  version '2.3.4'
  sha256 '59d7530625866c3d7d5cfa753e12dee0f052f79e1a7572f8e5633ad915369228'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
