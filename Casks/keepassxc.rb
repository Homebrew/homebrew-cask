cask 'keepassxc' do
  version '2.5.3'
  sha256 'e278f02466e3fb294c5c676d7b0ba3c60302d0b08273b8088ff39ca2e97e79af'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-2.dmg"
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
               '~/Library/Logs/DiagnosticReports/KeePassXC_*.crash',
               '~/Library/Application Support/CrashReporter/KeePassXC_*.plist',
             ]
end
