cask :v1 => 'doublecommand' do
  version '1.7'
  sha256 '312aaf1a60517c694b24131bf502945dc23a22c917971c3e7a3adca163560503'

  url "http://doublecommand.sourceforge.net/files/DoubleCommand-#{version}.dmg"
  homepage 'http://doublecommand.sourceforge.net'
  license :oss

  pkg "DoubleCommand-#{version}.pkg"

  uninstall :script => '/Library/StartupItems/DoubleCommand/uninstall.command',
            :pkgutil => 'com.baltaks.DoubleCommand'
end
