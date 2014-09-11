class NetbeansPhp < Cask
  version '8.0.1'
  sha256 '97b53f6881236a533cfac78b17124e26393eb0445f5e0336fbd765c9b0230482'

  url 'http://download.netbeans.org/netbeans/8.0.1/final/bundles/netbeans-8.0.1-php-macosx.dmg'
  homepage 'https://netbeans.org/'

  pkg 'NetBeans 8.0.1.mpkg'
  uninstall :files => [
                       '/Applications/NetBeans'
                      ]
end
