cask 'dhs' do
  version '1.3.1'
  sha256 '3fc293da9f4730790e8c07833e0225fa6b57d2455bec53dd8e5b1e50de41c8d4'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/DHS_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: 'b2004932186e0eb176a9ac01fe499de292d502d7a17559e900822f9cdbfa74d6'
  name 'Dylib Hijack Scanner'
  homepage 'https://objective-see.com/products/dhs.html'

  app 'DHS.app'
end
