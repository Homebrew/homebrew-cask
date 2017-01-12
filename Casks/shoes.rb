cask 'shoes' do
  version '3.3.1'
  sha256 'f30a01d1e5dadc7dd775d140de9f04bf12a5046e4f2d5931ea7b67372ebe56fa'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  appcast 'http://shoesrb.com/downloads/',
          checkpoint: '00ccd9ab19e9cab3568826ee0a0f336748dba891b10672fc050a4c1624039a14'
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  app 'Shoes.app'
end
