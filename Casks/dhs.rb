cask 'dhs' do
  version '1.2.0'
  sha256 '8a9d15d5fd4cff113285fa53b2e4071fe9f7c9d2b8e7514f3ba907e657972405'

  url 'https://bitbucket.org/objective-see/deploy/downloads/DHS_1.2.0.zip'
  name 'Dylib Hijeck Scanner'
  homepage 'https://objective-see.com/products/dhs.html'

  app 'DHS.app'
  license :unknown

  uninstall delete: '/Applications/DHS.app'
end