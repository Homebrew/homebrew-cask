cask 'spillo' do
  version '133_1.9.0'
  sha256 '3cccb4c994514f7c74a5ae383b6298ac488ea044f3954c310e0727bf7ae4dd91'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '1618e4cd1f6355f089ca46ee2a3d25eb1ad94957a87febbd6da2384620f99fff'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
