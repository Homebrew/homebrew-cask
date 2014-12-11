cask :v1 => 'netbeans-cpp' do
  version '8.0.1'
  sha256 '724e3471329ae507dcd2127528cddbbdec5f0e104ee9a510fc49131196d6ab33'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown    # todo: improve this machine-generated value

  pkg "NetBeans #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
