cask 'spillo' do
  version '137_1.9.4'
  sha256 'd43ea52ddad9008eee59ecd4249698911f65dedce9d0bb0ac0d174f6e00b9130'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '2fda64848c7b6ceab1413f03397f62100409f49bdee61ac3fc293cc228aa929b'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
