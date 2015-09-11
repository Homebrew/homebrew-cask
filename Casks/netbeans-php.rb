cask :v1 => 'netbeans-php' do
  version '8.0.2'
  sha256 '8087d4327506e22f8e371551e28411e91a3b96f407ad381f349dbcbc2ecc291f'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-php-macosx.dmg"
  name 'NetBeans IDE for PHP'
  homepage 'https://netbeans.org/'
  license :oss

  pkg "NetBeans #{version}.pkg"

  uninstall :delete => '/Applications/NetBeans'
end
