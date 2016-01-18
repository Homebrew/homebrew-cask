cask 'chocolat' do
  version '3.1.4'
  sha256 'e0245cc70b11b41c998869b9dfe98899d76b47db8a4c1eedc12d50c23e0820c0'

  # fileability.net is the official download host per the vendor homepage
  url "http://files.fileability.net/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: 'd62711cabd393a56ca1957187aaf06a5dcb1ba9efbffefe38935ea6ee814732a'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'
  license :commercial

  app 'Chocolat.app'
end
