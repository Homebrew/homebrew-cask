cask 'adventure' do
  version :latest
  sha256 :no_check

  url 'http://www.lobotomo.com/products/downloads/Adventure.dmg'
  appcast 'http://www.lobotomo.com/products/Adventure/profileInfo.php',
          :sha256 => 'fff693fe50a74627563c92b35b3311026a9f2a808c906eca4c8f18a41a08cbac'
  name 'Adventure'
  homepage 'http://www.lobotomo.com/products/Adventure/'
  license :gratis

  app 'Adventure.app'
end
