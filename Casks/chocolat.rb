cask 'chocolat' do
  version '3.4'
  sha256 '43f1f96350c10aa2918719a2238c1e4ec20dd2cfa7a4930f6e7d74f92207c4fe'

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: 'bf76654d0bed26a920c320555e53a8b49e5b7f7a342abee769a898831ebe628d'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'

  app 'Chocolat.app'
end
