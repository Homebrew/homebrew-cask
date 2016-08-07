cask 'netbeans-cpp' do
  version '8.1'
  sha256 'b955f2bf13e5392bb190eb70b22c496f8aa924841e3a0056722e1e98dd64b2f6'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss

  pkg "NetBeans #{version}.pkg"

  uninstall delete: '/Applications/NetBeans'
end
