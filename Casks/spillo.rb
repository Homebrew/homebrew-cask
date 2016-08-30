cask 'spillo' do
  version '127_1.8.6'
  sha256 'a65f413252cf5629d002b2c90577a72a9069c0bf78132e9a5b23067a8ef06a60'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '690d354ae7a3e078b6d8fcf5c6ab576b8b2b6eeded51d8d68e9f1ab18038dd2b'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
