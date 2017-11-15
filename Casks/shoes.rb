cask 'shoes' do
  version '3.3.4'
  sha256 '04cbea833ec4772dd995c33021a7b09e38145318d809d8f6a41e0d551671592b'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  appcast 'http://shoesrb.com/downloads/',
          checkpoint: '3d263b9a9005f4e338760e699f11b62d23d401b19e3ece58224704fa5bd75c28'
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  app 'Shoes.app'
end
