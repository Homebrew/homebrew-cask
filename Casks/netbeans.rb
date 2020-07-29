cask 'netbeans' do
  version '12.0'
  sha256 'd7f8f857b5f2a1fe54c73721671b9f86933c2d6e63535de5427569754acc85de'

  url "https://www-eu.apache.org/dist/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  appcast 'https://www-eu.apache.org/dist/netbeans/netbeans/'
  name 'NetBeans IDE'
  homepage 'https://netbeans.apache.org/download/index.html'

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: 'org.netbeans.ide.*|glassfish.*',
            delete:  '/Applications/NetBeans'

  zap trash: [
               '~/Library/Application Support/NetBeans',
               '~/Library/Caches/NetBeans',
             ]
end
