cask 'spillo' do
  version '138_1.9.5'
  sha256 '3a03cd7407cb3f41ba0718c3113941c30f441ec81d38c1ddb123a652c7b1cfe5'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'd0e71b687c7cb37cfcea0cbd69b7669454538e0cb40150aff7fada2c0aecc2ae'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
