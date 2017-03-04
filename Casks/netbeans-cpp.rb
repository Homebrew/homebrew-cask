cask 'netbeans-cpp' do
  version '8.2'
  sha256 'e1719f1232e390c1d1fdf491b68c2a68c5d9512b38cb65d9f2614dc72af90717'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.pkg"

  uninstall delete: '/Applications/NetBeans'
end
