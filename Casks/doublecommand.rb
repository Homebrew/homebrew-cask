cask 'doublecommand' do
  version '1.7'
  sha256 '312aaf1a60517c694b24131bf502945dc23a22c917971c3e7a3adca163560503'

  url "http://doublecommand.sourceforge.net/files/DoubleCommand-#{version}.dmg"
  appcast 'https://github.com/mbaltaks/doublecommand/releases.atom',
          checkpoint: '3b4f7064893eb668a43ffcbd82993b469a116b23404dfeacc29895faf13d7ac8'
  name 'DoubleCommand'
  homepage 'http://doublecommand.sourceforge.net/'

  pkg "DoubleCommand-#{version}.pkg"

  uninstall script:  '/Library/StartupItems/DoubleCommand/uninstall.command',
            pkgutil: 'com.baltaks.DoubleCommand'
end
