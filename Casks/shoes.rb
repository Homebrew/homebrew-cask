cask 'shoes' do
  version '3.3.6'
  sha256 '8f23e236e49465f939005ffcdc10adbd2f3d677f46fd441b17b7bb5978a5daaf'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  appcast 'http://shoesrb.com/downloads/',
          checkpoint: '3a2a4cca3c4d86f4bed3575bcadec8a72c2416bb75549119ddfad1fb727bbe85'
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  app 'Shoes.app'
end
