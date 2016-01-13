cask 'adventure' do
  version :latest
  sha256 :no_check

  url 'http://www.lobotomo.com/products/downloads/Adventure.dmg'
  appcast 'http://www.lobotomo.com/products/Adventure/profileInfo.php',
          :checkpoint => '22d2e51cd63dfb367f541216a9f0b8b52b8004cb3a481defe2c92c29741d46a8'
  name 'Adventure'
  homepage 'http://www.lobotomo.com/products/Adventure/'
  license :gratis

  app 'Adventure.app'
end
