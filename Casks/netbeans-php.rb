cask 'netbeans-php' do
  version '8.1'
  sha256 '40d95d31f0f3b87c9d79964c0faa0303f2ae91d9a92a405d7f396857a10bfef1'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-php-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss

  pkg "NetBeans #{version}.pkg"

  uninstall delete: '/Applications/NetBeans'
end
