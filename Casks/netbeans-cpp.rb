class NetbeansCpp < Cask
  version '8.0'
  sha256 '55e58e5c01d38860919b8765a9ed5b048aef20d474c913305973bc03343b9d98'

  url 'http://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-cpp-macosx.dmg'
  homepage 'https://netbeans.org/'

  pkg 'NetBeans 8.0.mpkg'
  uninstall :files => [
                       '/Applications/NetBeans'
                      ]
end
