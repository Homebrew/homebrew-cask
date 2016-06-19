cask 'spillo' do
  version '124_1.8.3'
  sha256 '302cdb44e4c4cea1feebee0e726b6395482bc745ed0aed7d6d0a431195b7225c'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '73f18e5eda9cc4a705106653c5bfec897849cd57cf19a4d91c4718222e376fef'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
