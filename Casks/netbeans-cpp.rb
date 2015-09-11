cask :v1 => 'netbeans-cpp' do
  version '8.0.2'
  sha256 'af81462adbe046b2c46afe2137f090b857cbe54f3ffacf7f4b90702cafda420b'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-cpp-macosx.dmg"
  name 'NetBeans IDE for C/C++'
  homepage 'https://netbeans.org/'
  license :oss

  pkg "NetBeans #{version}.mpkg"

  uninstall :delete => '/Applications/NetBeans'
end
