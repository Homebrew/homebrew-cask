cask :v1 => 'chocolat' do
  version :latest
  sha256 :no_check

  url 'https://chocolatapp.com/download'
  appcast 'http://chocolatapp.com/userspace/appcast/appcast_alpha.php'
  homepage 'http://chocolatapp.com/'
  license :unknown

  app 'Chocolat.app'
end
