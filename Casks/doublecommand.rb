cask 'doublecommand' do
  version '1.7'
  sha256 '312aaf1a60517c694b24131bf502945dc23a22c917971c3e7a3adca163560503'

  url "http://doublecommand.sourceforge.net/files/DoubleCommand-#{version}.dmg"
  appcast 'https://github.com/mbaltaks/doublecommand/releases.atom',
          checkpoint: '094eeb41e5a274d0eb3e01c4d2049efca7da3f5badeb62ef92431515e08203ef'
  name 'DoubleCommand'
  homepage 'http://doublecommand.sourceforge.net'

  pkg "DoubleCommand-#{version}.pkg"

  uninstall script:  '/Library/StartupItems/DoubleCommand/uninstall.command',
            pkgutil: 'com.baltaks.DoubleCommand'
end
