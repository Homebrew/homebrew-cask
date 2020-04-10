cask 'keepassxc' do
  version '2.5.4'
  sha256 '3d56ebbcb3471a2f6116abe884d1e7b662347b80e18cc0a12ca9fdf2c9a14d7a'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  depends_on macos: '>= :high_sierra'

  app 'KeePassXC.app'
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: [
               '~/.keepassxc',
               '~/Library/Application Support/keepassxc',
               '~/Library/Caches/org.keepassx.keepassxc',
               '~/Library/Preferences/org.keepassx.keepassxc.plist',
               '~/Library/Saved Application State/org.keepassx.keepassxc.savedState',
               '~/Library/Logs/DiagnosticReports/KeePassXC_*.crash',
               '~/Library/Application Support/CrashReporter/KeePassXC_*.plist',
             ]
end
