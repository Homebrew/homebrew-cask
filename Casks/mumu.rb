cask 'mumu' do
  version :latest
  sha256 :no_check

  # vendors.paddle.com was verified as official when first introduced to the cask
  url 'https://vendors.paddle.com/download/product/597910'
  name 'Mumu'
  homepage 'https://getmumu.com/'

  app 'Mumu.app'
end
