class Macmoney < Cask
  url 'http://www.devon.riceball.net/downloads/macmoney36.zip'
  homepage 'http://www.devon.riceball.net/display.php?file=m01'
  version '3.6.4'
  sha256 '2ccbc4e6758d301a10f44711cdf1147d27e3ef6dd5b4b8c8b7d7c5ab90df80b8'
  nested_container 'MacMoney_3.6.4.dmg'
  link 'MacMoney.app'
end
