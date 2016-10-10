cask 'letter' do
  version :latest
  sha256 :no_check

  # paddle-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://paddle-static.s3.amazonaws.com/framework/apps/Let.ter/Let.ter.zip'
  name 'Let.ter'
  homepage 'http://theletterapp.com/'

  app 'Let.ter.app'
end
