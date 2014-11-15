cask :v1 => 'netbeans-php' do
  version '8.0.1'
  sha256 '97b53f6881236a533cfac78b17124e26393eb0445f5e0336fbd765c9b0230482'

  url "http://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-php-macosx.dmg"
  homepage 'https://netbeans.org/'
  license :unknown

  pkg "NetBeans #{version}.mpkg"
  uninstall :delete => '/Applications/NetBeans'
end
