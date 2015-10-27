cask :v1 => 'scapple' do
  version '1.2'
  sha256 '1b9968a7927c29b5b4fa4d2c9e5ce78c56e5c3cfbb42847836c2e732018d92c1'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'
  license :commercial

  app 'Scapple.app'
end
