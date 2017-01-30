cask 'chocolat' do
  version '3.3.4'
  sha256 '2c38ff34dba2c6c546beae71b55626ca051183f3f6a88073a8ead8ca0efadb3f'

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: '91953f72eb3b5c68806065bfbc0b4c7fa16ee1502d7146e4b1904cfbecdf30b4'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'

  app 'Chocolat.app'
end
