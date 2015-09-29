cask :v1 => 'propresenter' do
  version '6.0.9_b15021'
  sha256 'd47f483f653293ab594bd6ed2bdd81aae4e118308bfc7f2d1f822ca2869f5cb6'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => 'aad2c3f939c7ba9e2c3e42fb1567490353dea20de12c0f65f909f3477c9d22ee'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
