cask 'spillo' do
  version '130_1.8.8'
  sha256 '959bbf08597201d4d7204cadefd3406793fe60c4cb866cddbccc2da1dc073a85'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'f3718186edab0e631fdaaefe3c3ee81e9ab8e2dfa8fdba5cd228de7e6e5a036b'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end
