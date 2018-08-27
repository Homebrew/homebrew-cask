cask 'netbeans-cpp' do
  version '8.2'
  sha256 'e9b04de3ff2ecc2218899ae5f3bc795033492d79c3ac34ccd0e83ab2c14b9ee2'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.pkg"

  uninstall delete: '/Applications/NetBeans'
end
