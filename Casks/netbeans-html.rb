cask 'netbeans-html' do
  version '8.2'
  sha256 '084c34512db43a9027c0ee24bb1dc72364fc64ff6fa1b5ddeface07ba1c80c3b'

  url "https://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-html-macosx.dmg"
  appcast 'https://netbeans.org/downloads/'
  name 'NetBeans IDE for HTML5/JavaScript'
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.pkg"

  uninstall pkgutil: 'org.netbeans.ide.*|glassfish.*',
            delete:  '/Applications/NetBeans'
end
