cask 'keepassxc' do
  version '2.5.0'
  sha256 'd6da012cca981d21925d4fa9fff6b2aa74d77ece8de89ef55ca999ee7d5eaa38'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  depends_on macos: '>= :sierra'

  app 'KeePassXC.app'
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: '~/.keepassxc'
end
