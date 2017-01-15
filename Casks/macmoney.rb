cask 'macmoney' do
  version '3.7.3'
  sha256 'ecd89e3f8f266c9dc005020471c84032f0061d003a8e447a481505bfe487ffa5'

  url "http://www.devon.riceball.net/downloads/macmoney#{version.no_dots}.zip"
  name 'MacMoney'
  homepage 'https://www.devon.riceball.net/display.php?file=m01'

  app 'MacMoney.app'
end
