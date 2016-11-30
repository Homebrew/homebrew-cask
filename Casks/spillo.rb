cask 'spillo' do
  version '136_1.9.3'
  sha256 'dbd910020f4d4cba03cfe434cfa123937f6e3be3947af801737a3e6abb001b3b'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'a85c2858e7adb3d60252e30854e6cfda40558ac40cb63663507417dccf121607'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
