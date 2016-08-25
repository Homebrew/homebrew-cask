cask 'spillo' do
  version '126_1.8.5'
  sha256 '37172b7716fab717c15212653964cf2579690f40713663c3eb07113e68cfb0c5'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '3cba1573938d8c1653cfe6d2ffaf4d78a2cd2d0b49a53195a67ead0e84a9a1d7'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
