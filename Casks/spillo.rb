cask 'spillo' do
  version '141_1.9.7'
  sha256 '1843b8efc0540b97b562d37f5549b6a8ba7079e36d09ce75dc61ca5185a3682e'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '7f2ca67505c011343ddf72efd684f1e3ba806d9f9429ca137dc53b045fb69f52'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
