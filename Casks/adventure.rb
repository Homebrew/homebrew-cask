cask :v1 => 'adventure' do
  version :latest
  sha256 :no_check

  url 'http://www.lobotomo.com/products/downloads/Adventure.dmg'
  name 'Adventure'
  appcast 'http://www.lobotomo.com/products/Adventure/profileInfo.php'
  homepage 'http://www.lobotomo.com/products/Adventure/'
  license :gratis

  app 'Adventure.app'
end
