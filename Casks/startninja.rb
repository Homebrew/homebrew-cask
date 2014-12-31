cask :v1 => 'startninja' do
  version :latest
  sha256 :no_check

  url 'http://www.allvu.com/downloads/StartNinjaInstaller.dmg'
  homepage 'http://www.allvu.com/index.php/products/startninja.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'StartNinja.app'
end
