cask 'keepassxc' do
  version '2.4.0'
  sha256 'b611ada8bd6bc9fe93e8566b042ceaa3a9c2f1e8c5c2ddbefb866ce20a39254e'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  
  auto_updates true

  app 'KeePassXC.app'
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: '~/.keepassxc'
end
