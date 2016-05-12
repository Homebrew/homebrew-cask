cask 'spillo' do
  version '121_1.8'
  sha256 'aedfa725cb77db332024786dca5f7d50e4c376aa5b798092d1fcd034be82b0ca'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'badc2785c83c4f3e2f44410455abc6522d25d05ee55a5c5703838140d9829ca7'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
