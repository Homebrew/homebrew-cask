cask 'spillo' do
  version '135_1.9.2'
  sha256 'eabd96229ed392bf392c50e6e6c1811642d0a0a3aa9413e726dd8018d3657723'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'e44778a6413bc0ea36a07e2287b96079a992ccb299801d3f1d367b5956cdcb8b'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
