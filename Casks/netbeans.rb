cask 'netbeans' do
  version '11.1'
  sha256 '081d564e6b0c3b7aabd906a699de42fe5fff73b1e5e8ed3977afa0010d0b2f33'

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
