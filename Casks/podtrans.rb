cask 'podtrans' do
  version :latest
  sha256 :no_check

  url 'http://www.imobie.com/product/podtrans-mac.dmg'
  name 'PodTrans'
  homepage 'http://www.imobie.com/podtrans'
  license :gratis

  app 'PodTrans.app'
end
