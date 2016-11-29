cask 'product-hunt' do
  version :latest
  sha256 :no_check

  url 'https://s3.producthunt.com/mac/ProductHunt.dmg'
  name 'Product Hunt'
  homepage 'https://www.producthunt.com/apps/mac'

  app 'Product Hunt.app'
end
