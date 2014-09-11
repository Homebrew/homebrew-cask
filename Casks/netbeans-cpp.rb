class NetbeansCpp < Cask
  version '8.0.1'
  sha256 '724e3471329ae507dcd2127528cddbbdec5f0e104ee9a510fc49131196d6ab33'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.mpkg"
  uninstall :files => [
                       '/Applications/NetBeans'
                      ]
end
