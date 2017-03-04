cask 'spillo' do
  version '149_1.9.11'
  sha256 'd9292967da8470abc895a24abcedc3e0def01c780aed1d0f1bd788886d419727'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '21829106f7be0be62588391ba35eb4f4eac120ce75d2b68cbf9f63aa63d1731f'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
