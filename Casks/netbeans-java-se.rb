cask 'netbeans-java-se' do
  version '8.2'
  sha256 '91652f03d8abba0ae9d76a612ed909c9f82e4f138cbd510f5d3679280323011b'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-javase-macosx.dmg"
  name 'NetBeans IDE for Java SE'
  homepage 'https://netbeans.org/'

  pkg "NetBeans #{version}.pkg"

  uninstall pkgutil: 'org.netbeans.ide.*',
            delete:  '/Applications/NetBeans'
end
