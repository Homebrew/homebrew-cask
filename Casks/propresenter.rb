cask 'propresenter' do
  version '6.0.14_b15078'
  sha256 'c7509b1200722178471bfaf6e3b4f1e61908b8c7114dfedfcafcc3b4a26c1c2d'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'fbe5ac156afaa12f4cac313d6bf513e9713cd4290448a04e9e7e13ec7b0a7329'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
