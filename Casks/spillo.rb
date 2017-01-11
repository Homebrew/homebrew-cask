cask 'spillo' do
  version '142_1.9.8'
  sha256 'fb59347179b48b8a6f17090efe605966552472aefcba8a38a58d8616dfdb962c'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '2f57f83464048b5e97a0b95cf76f37f090d1662e144b1e984fb24926d0413f68'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
