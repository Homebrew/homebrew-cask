cask 'netbeans' do
  version '11.3'
  sha256 '5a00202c8366111d5c3187c0fe8057411673fbc8a4f8b167d0b59ddf66cc9902'

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
