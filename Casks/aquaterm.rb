cask 'aquaterm' do
  version '1.1.1'
  sha256 '94b33efea2ec037e6c06beef54b4b3cc48595453c874de863f25c26b3a7ffdb2'

  url "https://downloads.sourceforge.net/aquaterm/AquaTerm/v#{version}/AquaTerm-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/aquaterm/rss?path=/AquaTerm',
          checkpoint: '7690e67a0a5101a228b261979ab45b525f57bddcfe0fa10409ad16bc7621afed'
  name 'AquaTerm'
  homepage 'http://aquaterm.sourceforge.net/'

  pkg 'AquaTermInstaller.pkg'

  uninstall pkgutil: 'net.sourceforge.aquaterm.aquaterm.*'

  zap       delete: '~/Library/Preferences/net.sourceforge.aquaterm.plist'
end
