cask :v1 => 'startninja' do
  version :latest
  sha256 :no_check

  url 'http://www.allvu.com/downloads/StartNinjaInstaller.dmg'
  homepage 'http://www.allvu.com/index.php/products/startninja.html'
  license :unknown

  app 'StartNinja.app'
end
