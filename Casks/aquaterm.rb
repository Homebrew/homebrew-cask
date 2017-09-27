cask 'aquaterm' do
  version '1.1.1'
  sha256 '7a07d3f7cca5c0b38ca811984ef8da536da32932d68c1a6cce33ec2462b930bf'

  url "https://downloads.sourceforge.net/aquaterm/AquaTerm/v#{version}/AquaTerm-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/aquaterm/rss?path=/AquaTerm',
          checkpoint: '7a07d3f7cca5c0b38ca811984ef8da536da32932d68c1a6cce33ec2462b930bf'
  name 'AquaTerm'
  homepage 'https://sourceforge.net/projects/aquaterm/'

  pkg 'AquaTermInstaller.pkg'

  uninstall pkgutil: 'net.sourceforge.aquaterm.aquaterm.*'

  zap       delete: '~/Library/Preferences/net.sourceforge.aquaterm.plist'
end
