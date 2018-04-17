cask 'beesoft' do
  version '3.15.1'
  sha256 '8e55dd772af896516c1d5a3fc89875c4c71b25d64206eed89444d5e86bd60404'

  url "https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT-#{version}/Mac-BEESOFT-#{version}.pkg"
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'

  pkg "Mac-BEESOFT-#{version}.pkg"

  uninstall pkgutil: 'com.beeverycreative.beesoft'
end
