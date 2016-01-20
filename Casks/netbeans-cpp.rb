cask 'netbeans-cpp' do
  version '8.1'
  sha256 'c74d57fce7161b0d98e4b90757e63b76aefd59a89c40077945d48e9f40a53a5c'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss

  pkg "NetBeans #{version}.pkg"

  uninstall delete: '/Applications/NetBeans'
end
