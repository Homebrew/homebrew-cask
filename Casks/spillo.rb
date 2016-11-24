cask 'spillo' do
  version '134_1.9.1'
  sha256 '68ca7bc517d1d905b0aee1259519c39ee7dacb5411d279bcfe6b51ae7b54dd76'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'a62294387c0e83fee8e27278bfb78c8f353bccbe39f2780c101bc900d7826f86'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
