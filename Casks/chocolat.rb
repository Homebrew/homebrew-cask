cask 'chocolat' do
  version '3.3'
  sha256 'cdf2465147220ae6ffb1fc91b7581b1aa4b586142fa52c4b772bf680eb8e71e9'

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: '3d421c2343a71085e9e25d1fd77fef4df96fccbf77c678ad1c01db0003d9e8d9'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'
  license :commercial

  app 'Chocolat.app'
end
