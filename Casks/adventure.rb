cask 'adventure' do
  version :latest
  sha256 :no_check

  url 'http://www.lobotomo.com/products/downloads/Adventure.dmg'
  appcast 'http://www.lobotomo.com/products/Adventure/profileInfo.php',
          :sha256 => 'bd690120b93b99efa6765ec29decec63ad62e41f4a080aa7ce947f0ba03f26d4'
  name 'Adventure'
  homepage 'http://www.lobotomo.com/products/Adventure/'
  license :gratis

  app 'Adventure.app'
end
