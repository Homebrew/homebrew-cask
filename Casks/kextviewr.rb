cask 'kextviewr' do
  version '1.0.1'
  sha256 '19eaddfcce40c7608bd0f9b4df1e61277c57896dc7e666e237866260e2b17073'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KextViewr_#{version}.zip"
  name 'KextViewr'
  homepage 'https://objective-see.com/products/kextviewr.html'
  license :gratis

  app 'KextViewr.app'
end
