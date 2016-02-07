cask 'startninja' do
  version :latest
  sha256 :no_check

  url 'http://www.allvu.com/downloads/StartNinjaInstaller.dmg'
  name 'StartNinja'
  homepage 'http://www.allvu.com/index.php/products/startninja.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'StartNinja.app'
end
