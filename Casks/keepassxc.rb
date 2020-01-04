cask 'keepassxc' do
  version '2.5.2'
  sha256 '9755d3f16b98db6f8d25e02a445a0b7f4aae822e514105cec02df4c25b53f993'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  depends_on macos: '>= :sierra'

  app 'KeePassXC.app'
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: [
               '~/.keepassxc',
               '~/Library/Application Support/keepassxc',
               '~/Library/Caches/org.keepassx.keepassxc',
               '~/Library/Preferences/org.keepassx.keepassxc.plist',
               '~/Library/Saved Application State/org.keepassx.keepassxc.savedState',
             ]
end
