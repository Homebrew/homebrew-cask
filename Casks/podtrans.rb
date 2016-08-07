cask 'podtrans' do
  version :latest
  sha256 :no_check

  url 'https://www.imobie.com/product/podtrans-mac.dmg'
  name 'PodTrans'
  homepage 'https://www.imobie.com/podtrans'
  license :gratis

  app 'PodTrans.app'
end
