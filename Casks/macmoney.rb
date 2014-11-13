cask :v1 => 'macmoney' do
  version '3.7'
  sha256 'cc4b7524f340a4c66f793c86736254d431c65dbdb21ec9e8b25c06ea737f084f'

  url 'http://www.devon.riceball.net/downloads/macmoney37.zip'
  homepage 'http://www.devon.riceball.net/display.php?file=m01'
  license :commercial

  container :nested => "MacMoney_#{version}.dmg"
  app 'MacMoney.app'
end
