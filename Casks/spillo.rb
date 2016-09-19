cask 'spillo' do
  version '129_1.8.7'
  sha256 'fa4d04b2abeddb4a0ddca5bd4a1686078af59f0582205e62a7a0770ff6f3bb36'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'e0ce29fb317c6a705b92cbf0b0cc6543ea4696dda8bf83de32e087bf33293fa9'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
