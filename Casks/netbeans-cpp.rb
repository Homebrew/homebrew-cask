class NetbeansCpp < Cask
  version '8.0.1'
  sha256 '724e3471329ae507dcd2127528cddbbdec5f0e104ee9a510fc49131196d6ab33'

  url 'http://download.netbeans.org/netbeans/8.0.1/final/bundles/netbeans-8.0.1-cpp-macosx.dmg'
  homepage 'https://netbeans.org/'

  pkg 'NetBeans 8.0.1.mpkg'
  uninstall :files => [
                       '/Applications/NetBeans'
                      ]
end
