class Macmoney < Cask
  version '3.6.6'
  sha256 '34168a92ab65daf5280c879887011e30e9a3e01398f5402a32034049932a075b'

  url 'http://www.devon.riceball.net/downloads/macmoney36.zip'
  homepage 'http://www.devon.riceball.net/display.php?file=m01'

  nested_container 'MacMoney_3.6.6.dmg'
  link 'MacMoney.app'
end
