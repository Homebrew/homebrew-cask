cask 'netbeans' do
  version '11.1'
  sha256 'ddcf37e91d960cca6b6a37c95eabf2c6f15330ed708bfd79be796de00da20e5e'

  url "https://www.apache.org/dyn/closer.cgi/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
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
