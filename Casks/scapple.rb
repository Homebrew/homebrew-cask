cask 'scapple' do
  version '1.2'
  sha256 '1b9968a7927c29b5b4fa4d2c9e5ce78c56e5c3cfbb42847836c2e732018d92c1'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  appcast 'https://www.literatureandlatte.com/downloads/scapple/scapple.xml',
          :checkpoint => 'bc0c367a2e57f9c8c9ff80b82365e7044d8dfca5a1688dda4ae446e551d8141d'
  name 'Scapple'
  homepage 'https://www.literatureandlatte.com/scapple.php'
  license :commercial

  app 'Scapple.app'
end
