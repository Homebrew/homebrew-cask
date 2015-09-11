cask :v1 => 'macmoney' do
  version '3.7.1'
  sha256 '65c24dafbb957f2f050c10dafe39756f04a1dc12e2d8f3016e00a5347dcb5171'

  url 'http://www.devon.riceball.net/downloads/macmoney37.zip'
  name 'MacMoney'
  homepage 'http://www.devon.riceball.net/display.php?file=m01'
  license :commercial

  container :nested => "MacMoney_#{version}.dmg"
  app 'MacMoney.app'
end
