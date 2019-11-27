cask 'netbeans' do
  version '11.2'
  sha256 '6e5209458601f8afa9f195cb979b7c68400407d9a0b367c7a80162cb78c2cb26'

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
