class Chocolat < Cask
  url 'http://chocolatapp.com/download'
  appcast 'http://chocolatapp.com/userspace/appcast/appcast_alpha.php'
  homepage 'http://chocolatapp.com/'
  version 'latest'
  sha256 :no_check
  link 'Chocolat.app'
end
