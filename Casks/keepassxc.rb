cask 'keepassxc' do
  version '2.4.3'
  sha256 '148c138fc5fa19185feed5cdcf0cccff3cc224d3a0c454caf18f972ffdfd9bbe'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  depends_on macos: '>= :sierra'

  app 'KeePassXC.app'
  binary 'KeePassXC.app/Contents/MacOS/keepassxc-cli'

  zap trash: '~/.keepassxc'
end
