cask 'letter' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://paddle-static.s3.amazonaws.com/framework/apps/Let.ter/Let.ter.zip'
  name 'Let.ter'
  homepage 'http://theletterapp.com/'
  license :commercial

  app 'Let.ter.app'
end
