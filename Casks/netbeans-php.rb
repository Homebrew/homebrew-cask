cask 'netbeans-php' do
  version '8.2'
  sha256 '084c34512db43a9027c0ee24bb1dc72364fc64ff6fa1b5ddeface07ba1c80c3b'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-php-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.pkg"

  uninstall delete: '/Applications/NetBeans'
end
