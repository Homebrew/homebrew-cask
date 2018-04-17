cask 'aquaterm' do
  version '1.1.1'
  sha256 '94b33efea2ec037e6c06beef54b4b3cc48595453c874de863f25c26b3a7ffdb2'

  url "https://downloads.sourceforge.net/aquaterm/AquaTerm/v#{version}/AquaTerm-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/aquaterm/rss?path=/AquaTerm',
          checkpoint: '919b1aaf6bdb5814d370b76ea198c20ee2595a738ba0697f3dd88c4b96b46050'
  name 'AquaTerm'
  homepage 'https://sourceforge.net/projects/aquaterm/'

  pkg 'AquaTermInstaller.pkg'

  uninstall pkgutil: 'net.sourceforge.aquaterm.aquaterm.*',
            delete:  '/Library/Frameworks/AquaTerm.framework'

  zap trash: '~/Library/Preferences/net.sourceforge.aquaterm.plist'
end
