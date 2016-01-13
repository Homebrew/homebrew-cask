cask 'chocolat' do
  version '3.1.4'
  sha256 'e0245cc70b11b41c998869b9dfe98899d76b47db8a4c1eedc12d50c23e0820c0'

  # fileability.net is the official download host per the vendor homepage
  url "http://files.fileability.net/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          :checkpoint => 'c871746d77d40e4ab42566e933d517f9c70eba338544492b580d32849e909b72'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'
  license :commercial

  app 'Chocolat.app'
end
